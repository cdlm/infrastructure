.PHONY: diff install

SRCFILES = deflac gatherWindows graffle2pdf stakeout textmatebundles


DEST = $(HOME)/bin
DESTFILES = $(SRCFILES:%=$(DEST)/%)

diff:
	@for f in $(SRCFILES); do diff -uN $${f} $(DEST)/$${f}; done

install: $(DESTFILES)

$(DEST)/%: % $(DEST)
	cp $< $@

$(DEST):
	mkdir -p $(DEST)
