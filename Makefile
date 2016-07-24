PAPER1_NAME=	Thesis
REF=		ref.bib


PAPER1_SRC=	$(PAPER1_NAME).tex
PAPER1_PDF=	$(PAPER1_SRC:.tex=.pdf)

PAPER1_CLEAN=	$(PAPER1_PDF) $(PAPER1_NAME).log $(PAPER1_NAME).aux $(PAPER1_NAME).bbl \
		$(PAPER1_NAME).blg $(PAPER1_NAME).out $(PAPER1_NAME).tex~ \
		$(PAPER1_NAME).tex.backup \
		$(PAPER1_NAME).toc ref.bib~ ref.bib.backup Makefile~



ALL_CLEAN=	$(PAPER1_CLEAN) figures/*converted-to* 


LATEX=		latex
PDFLATEX=	pdflatex
BIBTEX=		bibtex

all: $(PAPER1_PDF)

$(PAPER1_PDF): $(PAPER1_SRC) $(REF)
	$(PDFLATEX) $(PAPER1_NAME)
	$(BIBTEX) $(PAPER1_NAME)
	$(PDFLATEX) $(PAPER1_NAME)


clean:
	rm $(ALL_CLEAN)
