COMMANDS = biber pdflatex
K := $(foreach command,$(COMMANDS),\
        $(if $(shell which $(command)),$(info $(command) found ...),$(error '$(command)' not found!)))
OPEN_COMMAND = $(if $(shell which open 2>/dev/null),open,evince)

LATEX=pdflatex

main_tex = main.tex
texs := $(shell find . -name "*.tex")

.PHONY: open clean handoff

main.pdf: literatur.bib $(texs)
	$(LATEX) $(main_tex)
	biber main
	$(LATEX) $(main_tex)

open: main.pdf
	$(OPEN_COMMAND) main.pdf

clean:
	git clean -Xf

handoff:
	git add .
	git commit -m "handoff commit from $$(hostname) at $$(date)"
	git push

