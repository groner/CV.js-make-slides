BUILDDIR ?= build

JADE ?= jade $(JADEFLAGS)
JADEFLAGS += -P

all: $(BUILDDIR)/index.html $(BUILDDIR)/images

# Compile html from jade
$(BUILDDIR)/%.html: %.jade Makefile
	@mkdir -pv $(@D)
	$(JADE) -p $< <$< >$@

# Copy images
.PHONY: $(BUILDDIR)/images
$(BUILDDIR)/images: images
	@mkdir -pv $(@D)
	cp -a $< $@

clean:
	-rm -rf build
