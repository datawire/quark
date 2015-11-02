package client;

import directory.Directory;
import directory.Entry;
import directory.LookupCallback;
import io.datawire.quark_runtime.Runtime;

public class DirectoryClient {
	public static void main(String[] args) {
		io.datawire.quark_runtime.netty.DatawireNettyRuntime runtime = new io.datawire.quark_runtime.netty.DatawireNettyRuntime();
		String name = "service-" + args[0];
		String endpoint = "Java-endpoint-" + args[0];
		Directory directory = new Directory(runtime, "ws://127.0.0.1:8910", name , endpoint);
		for (String letter : "A,B,C,D,E".split(",")) {
			final String service = "service-" + letter;
			directory.lookupAsync(service, new LookupCallback() {
				
				public void run(Entry result) {
					if (result != null) {
						System.out.println("Looked up " + service + " and got back " + result.toString() );
					} else {
						System.out.println("Looked up " + service + " and got back " + "nothing" );
					}
				}
			});
		}
		System.out.println("lookupAsync called");
		runtime.launch();
	}
}
