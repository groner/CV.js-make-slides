.SECONDEXPANSION:
.DELETE_ON_ERROR:

BUILDDIR ?= build

JADE ?= jade
JADEFLAGS += -P
JADEFLAGS += -O '{$(JADE_OBJ)}'
JADE_OBJ += basedir: "$(CURDIR)",

all: $(BUILDDIR)/index.html $(BUILDDIR)/reveal.js

$(BUILDDIR)/index.html_DEPENDS = $(wildcard slides/*)
$(BUILDDIR)/index.html_DEPENDS = $(wildcard css/*)
$(BUILDDIR)/index.html_DEPENDS = $(wildcard demo/*/Makefile.jade)
$(BUILDDIR)/index.html_DEPENDS = $(wildcard demo/*/.tree.txt)

$(BUILDDIR)/%.html: DEPENDS = $($@_DEPENDS)
$(BUILDDIR)/%.html: %.jade Makefile $$(DEPENDS)
	@mkdir -pv $(@D)
	$(JADE) $(JADEFLAGS) -p $< <$< >$@

$(BUILDDIR)/reveal.js: vendor/reveal.js
	ln -fs ../$< $@
