.PHONY: examples

CC = xelatex
RESUME_SRCS = $(shell find src/resume -name '*.tex')

pdf: src/resume.tex $(RESUME_SRCS)
	docker run --rm -v "$(PWD):/workspace" -w /workspace texlive/texlive:latest xelatex src/resume.tex

clean:
	rm -rf *.pdf
