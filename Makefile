compile :=
clean :=

.PHONY: all
all:

include ../../mk/debug.mk
include ../../mk/blog_entry.mk
include ../../mk/clean.mk

all: compile

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

pdf := $(patsubst %.grap, %.pdf, $(wildcard *.grap))
ps := $(patsubst %.pdf, %.ps, $(pdf))
svg := $(patsubst %.pdf, %.svg, $(pdf))
png := $(patsubst %.pdf, %.png, $(pdf))

clean += $(pdf) $(ps) $(svg) $(png)
compile += $(pdf) $(ps) $(svg)

.PHONY: compile
compile: $(compile)
