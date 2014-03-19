JADE ?= jade $(JADEFLAGS)
JADEFLAGS += --pretty

all: index.html

# Compile html from jade
%.html: %.jade
	$(JADE) -p $< <$< >$@

clean:
	-rm -f index.html
