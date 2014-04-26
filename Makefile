FNAME=Crypto-iMessage

# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: $(FNAME) all clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: $(FNAME)

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interactive=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

$(FNAME): sortbib main.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make main.tex
	mv main.pdf $(FNAME).pdf

sortbib:
	head -n 1 bib.tex > newbib.tex
	sed -n -e :a -e '1,1!{P;N;D;};N;ba' bib.tex | tail -n +2 | sort -f -k 2 >> newbib.tex
	tail -n 1 bib.tex >> newbib.tex
	mv newbib.tex bib.tex


clean:
	latexmk -C
	rm -f $(FNAME).pdf

