BUILDDIR ?= $(error BUILDDIR not specified)

# Download angular
vendor/angular/%:
	bower install angular\#1.2.x

$(BUILDDIR)/vendor/angular.js: vendor/angular/angular.js
	@mkdir -pv $(@D)
	browserify --debug --noparse $< $< > $@


clean:
	-rm -rf $(BUILDDIR)

clean-harder: clean
	-rm -rf vendor
