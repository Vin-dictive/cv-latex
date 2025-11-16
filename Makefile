CV_FILE = cv

all: $(CV_FILE).pdf

$(CV_FILE).pdf: $(CV_FILE).tex
	pdflatex $(CV_FILE).tex
	pdflatex $(CV_FILE).tex

clean:
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz

distclean: clean
	rm -f $(CV_FILE).pdf

.PHONY: all clean distclean