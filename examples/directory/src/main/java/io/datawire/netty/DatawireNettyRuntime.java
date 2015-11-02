package io.datawire.netty;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.SSLException;

import io.datawire.quark_runtime.HTTPHandler;
import io.datawire.quark_runtime.HTTPRequest;
import io.datawire.quark_runtime.Runtime;
import io.datawire.quark_runtime.Task;
import io.datawire.quark_runtime.WebSocket;
import io.datawire.quark_runtime.WebSocketHandler;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.http.DefaultHttpHeaders;
import io.netty.handler.codec.http.HttpClientCodec;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.websocketx.WebSocketClientHandshakerFactory;
import io.netty.handler.codec.http.websocketx.WebSocketVersion;
import io.netty.handler.ssl.SslContext;
import io.netty.handler.ssl.SslContextBuilder;
import io.netty.handler.ssl.util.InsecureTrustManagerFactory;
import io.netty.util.concurrent.GenericFutureListener;

public class DatawireNettyRuntime implements Runtime {

	private final Object lock = new Object();
	private boolean locked = false;
	private final EventLoopGroup group = new NioEventLoopGroup();

	public void acquire() {
		synchronized(lock) {
			assert !locked;
			locked = true;
		}
	}

	public void release() {
		synchronized(lock) {
			assert locked;
			locked = false;
		}
	}

	public void wait(Double timeoutInSeconds) {
		synchronized(lock) {
			assert locked;
			assert false;
		}
	}

	public void open(String url, final WebSocketHandler ws_handler) {
		URI uri;
		try {
			uri = new URI(url);
		} catch (URISyntaxException e) {
			ws_handler.onError(null); // XXX
			return;
		}
		String scheme = uri.getScheme() == null? "ws" : uri.getScheme();
		final String host = uri.getHost() == null? "127.0.0.1" : uri.getHost();
		final int port;
		if (uri.getPort() == -1) {
			if ("ws".equalsIgnoreCase(scheme)) {
				port = 80;
			} else if ("wss".equalsIgnoreCase(scheme)) {
				port = 443;
			} else {
				port = -1;
			}
		} else {
			port = uri.getPort();
		}

		if (!"ws".equalsIgnoreCase(scheme) && !"wss".equalsIgnoreCase(scheme)) {
			System.err.println("Only WS(S) is supported.");
			ws_handler.onError(null); // XXX
			return;
		}

		final boolean ssl = "wss".equalsIgnoreCase(scheme);
		final SslContext sslCtx;
		if (ssl) {
			try {
				sslCtx = SslContextBuilder.forClient()
						.trustManager(InsecureTrustManagerFactory.INSTANCE).build();
			} catch (SSLException e) {
				ws_handler.onError(null); // XXX
				return;
			}
		} else {
			sslCtx = null;
		}
		final DatawireNettyWebsocket ws =
				new DatawireNettyWebsocket(
						WebSocketClientHandshakerFactory.newHandshaker(
								uri, WebSocketVersion.V13, null, false, new DefaultHttpHeaders()),
								ws_handler);

		ws_handler.onInit(ws);

		Bootstrap b = new Bootstrap();
		b.group(group)
		.channel(NioSocketChannel.class)
		.handler(new ChannelInitializer<SocketChannel>() {

			@Override
			protected void initChannel(SocketChannel ch) throws Exception {
				ChannelPipeline p = ch.pipeline();
				if (sslCtx != null) {
					p.addLast(sslCtx.newHandler(ch.alloc(), host, port));
				}
				p.addLast(
						new HttpClientCodec(),
						new HttpObjectAggregator(8192),
						ws);
				ch.closeFuture().addListener(new ChannelFutureListener() {

					@Override
					public void operationComplete(ChannelFuture future) throws Exception {
						if (future.isDone()) {
							if (future.isSuccess()) {
								ws_handler.onClose(ws);
							} else {
								ws_handler.onError(ws);
							}
							ws_handler.onFinal(ws);
						}
					}
				});
			}
		});
		ChannelFuture connecting = b.connect(uri.getHost(), port);
		connecting.addListener(new ChannelFutureListener() {
			@Override
			public void operationComplete(ChannelFuture future) throws Exception {
				if (future.isDone()) {
					if (future.isSuccess()) {
						// fire onConnected only when websocket is fully connected
					} else {
						ws_handler.onError(ws);
					}
				}
			}
		});
	}

	@Override
	public void schedule(final Task handler, Double delayInSeconds) {
		final Runtime self = this;
		group.schedule(new Runnable() {

			@Override
			public void run() {
				handler.onExecute(self);
			}
		}, Double.valueOf(delayInSeconds * 1000).intValue(), TimeUnit.MILLISECONDS);
	}

	public void launch() {
		// TODO Auto-generated method stub

	}

	@Override
	public void request(HTTPRequest request, HTTPHandler handler) {
		handler.onError(request); // XXX
	}

}
