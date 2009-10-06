CR = submodules/completion-ruby
CR_PREFIX = $(PREFIX)/.bash.d/completion
CR_SRC = $(notdir $(filter-out %-all, $(wildcard $(CR)/completion-*)))
CR_DST = $(addprefix $(CR_PREFIX)/, $(CR_SRC))

install: install-completion-ruby

install-completion-ruby: $(CR_PREFIX) $(CR_DST) $(CR_PREFIX)/ruby.sh

$(CR_DST): \
$(CR_PREFIX)/%: $(CR)/%
	install -m 0644 $< $@

$(CR_PREFIX):
	install -d $@

$(CR_PREFIX)/ruby.sh:
	install -m 0644 $(CR)/completion-ruby-all $@

.PHONY: install-completion-ruby
