CR = submodules/completion-ruby
CR_PREFIX = $(PREFIX)/.bash.d/completion
CR_SRC = $(notdir $(filter-out %-all, $(wildcard $(CR)/completion-*)))
CR_DST = $(addprefix $(CR_PREFIX)/, $(CR_SRC))

install: install-completion-ruby

install-completion-ruby: $(CR_PREFIX) $(CR_DST) $(CR_PREFIX)/ruby.sh

$(CR_DST): \
$(CR_PREFIX)/%: $(CR)/%
	@$(INSTALL) $< $@

$(CR_PREFIX):
	@$(INSTALLDIR) $@

$(CR_PREFIX)/ruby.sh:
	@$(INSTALL) $(CR)/completion-ruby-all $@

.PHONY: install-completion-ruby
