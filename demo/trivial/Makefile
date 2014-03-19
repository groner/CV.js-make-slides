BUILDDIR ?= build

JADE ?= jade $(JADEFLAGS)

all: $(BUILDDIR)/index.html $(BUILDDIR)/images

# Compile html from jade
$(BUILDDIR)/index.html: index.jade Makefile
	@mkdir -pv $(@D)
	$(JADE) -p $< <$< >$@ || rm $@

# Copy images
.PHONY: $(BUILDDIR)/images
$(BUILDDIR)/images: images
	@mkdir -pv $(@D)
	cp -a $< $@

clean:
	-rm -rf build
