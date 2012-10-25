PDFNAMES=hw_template.pdf

all: build clean

clean:
	-rm -f *.aux
	-rm -f *.log
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.out

build: $(PDFNAMES)

%.pdf: %.tex
	pdflatex $<
	#bibtex $*
	pdflatex $<
	#pdflatex $<
