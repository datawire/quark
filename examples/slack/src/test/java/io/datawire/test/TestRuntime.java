package io.datawire.test;

import static org.junit.Assert.*;
import io.datawire.quark.netty.QuarkNettyRuntime;
import io.datawire.quark.runtime.HTTPHandler;
import io.datawire.quark.runtime.HTTPRequest;
import io.datawire.quark.runtime.HTTPResponse;
import quark.HTTPError;
import org.junit.Test;

public class TestRuntime {

	@Test
	public void test() {
		QuarkNettyRuntime runtime = QuarkNettyRuntime.getRuntime();
		HTTPRequest request = new HTTPRequest("http://www.google.com");
		HTTPHandler handler = new HTTPHandler() {
			
			@Override
			public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
				System.out.println("Response:" + String.valueOf(response.getCode()));
				String body = response.getBody();
				System.out.println(body.substring(0, Math.min(body.length(), 500)));
			}
			
			@Override
			public void onHTTPInit(HTTPRequest request) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onHTTPFinal(HTTPRequest request) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onHTTPError(HTTPRequest request, HTTPError error) {
				// TODO Auto-generated method stub
				
			}
		};
		runtime.request(request , handler);
		runtime.launch();
	}

}
