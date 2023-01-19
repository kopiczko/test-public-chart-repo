CHART_TARGETS := $(wildcard charts/*)

.PHONY: all
all: $(CHART_TARGETS) update-index

.PHONY: $(CHART_TARGETS)
$(CHART_TARGETS):
	helm package $@

.PHONY: update-index
update-index:
	helm repo index .
