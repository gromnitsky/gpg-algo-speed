compile :=
clean :=

.PHONY: all
all:

include ../../mk/debug.mk
include ../../mk/blog_entry.mk

all: compile

.PHONY: compile
compile: $(compile)

include ../../mk/clean.mk

define help :=
view    -- view a local post in a browser

post    -- make a remote post via podgraph

clean   -- rm all compiled targets

compile -- compile all
endef

.PHONY: help
help:
	@:
	$(info $(help))
