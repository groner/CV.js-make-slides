BUILDDIR ?= build

all: $(BUILDDIR)/bundle.js

# Download angular
vendor/angular/%:
	bower install angular\#1.2.x

# Bundle multiple scripts into one
$(BUILDDIR)/bundle.js: vendor/angular/angular.js src/controllers.js
	@mkdir -pv $(@D)
	cat $^ > $@


clean:
	-rm -rf $(BUILDDIR)

clean-harder: clean
	-rm -rf vendor
