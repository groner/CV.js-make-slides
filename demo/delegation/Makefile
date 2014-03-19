export BUILDDIR ?= $(CURDIR)/build

all: $(BUILDDIR)/bundle.js

# Look for sources or recipes for sources in $(BUILDDIR) if they aren't found otherwise
vpath % $(BUILDDIR)

$(BUILDDIR)/vendor/angular.js:
	$(MAKE) -C vendor/angular $@

# Bundle multiple scripts into one
$(BUILDDIR)/bundle.js: vendor/angular.js src/controllers.js
	@mkdir -pv $(@D)
	cat $^ > $@


clean:
	-rm -rf $(BUILDDIR)
	$(MAKE) -C vendor/angular clean

clean-harder: clean
	$(MAKE) -C vendor/angular clean-harder
