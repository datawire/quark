.PHONY: test clean default time

default clean test:
	@$< { \
	$(MAKE) -C javascript $@ && \
	$(MAKE) -C python $@ && \
	$(MAKE) -C go $@ && \
	$(MAKE) -C ruby $@ && \
	$(MAKE) -C java $@ && \
	echo ;\
	}

test: time
