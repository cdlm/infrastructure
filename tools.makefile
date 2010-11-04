### Utilities
### tools/x goes to $PREFIX/bin/x provided it's executable
###
.PHONY: install-tools diff-tools remote-tools
TOOLS_SRC = $(shell find tools -name .git -prune -o -type f -perm -u=x -print)
TOOLS_DST = $(TOOLS_SRC:tools/%=$(PREFIX)/bin/%)

install-tools: $(TOOLS_DST)

$(TOOLS_DST): \
$(PREFIX)/bin/%: tools/%
	install -d $(@D)  &&  install $< $@

diff-tools:
	@for f in $(TOOLS_SRC:tools/%=%); do \
		$(DIFF) -uN tools/$${f} $(PREFIX)/bin/$${f}; \
	done

remote-tools:
	curl http://chriswanstrath.com/hub/standalone -so $(PREFIX)/bin/hub
	chmod u+x $(PREFIX)/bin/hub
