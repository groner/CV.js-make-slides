BUILDDIR ?= build

all: $(BUILDDIR)/styles.css

LESSC ?= lessc $(LESSFLAGS)
LESSFLAGS += --include-path=vendor

# Download angular
vendor/bootstrap/%:
	bower install bootstrap\#3.1.x

.less.depends.mk: css/styles.less vendor/bootstrap/less
	$(LESSC) -M $< $(BUILDDIR)/styles.css >$@

include .less.depends.mk

$(BUILDDIR)/styles.css: css/styles.less vendor/bootstrap/less
	$(LESSC) $< $@

clean:
	-rm -rf $(BUILDDIR) .less.depends.mk

clean-harder: clean
	-rm -rf vendor
