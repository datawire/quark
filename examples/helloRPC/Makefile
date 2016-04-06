all: browser

browser: npm bhello-min.js

node_modules:
	mkdir node_modules

npm: node_modules
	npm -q install browserify uglifyjs | grep '^[a-zA-Z0-9]'

bhello-min.js: hello.q
	quark install --javascript hello.q
	node_modules/.bin/browserify -d -o bhello.js \
		-x ws \
		-r quark \
		-r quark/quark_node_runtime\
		-r hello
	node_modules/.bin/uglifyjs \
		--mangle --compress --stats -o bhello-min.js bhello.js 2>&1 \
	   | fgrep -v 'Dropping unused' \
	   | fgrep -v 'Side effects in initialization of unused variable' \
	   | fgrep -v 'Dropping unreachable code' \
	   | fgrep -v 'Declarations in unreachable code' \
	   | fgrep -v 'Condition always false'

clean:
	-rm -f bhello.js bhello-min.js

clobber: clean
	-rm -rf node_modules

	

