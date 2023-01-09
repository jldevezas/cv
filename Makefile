TEX_FILE=resume.tex
PDF_FILE=$(basename $(TEX_FILE)).pdf

all: build

build:
	latexmk -pdfxe $(TEX_FILE)

view: build
	evince $(PDF_FILE) &

dev: view
	latexmk -pdfxe -pvc $(TEX_FILE)

clean:
	latexmk -c

dist-clean:
	latexmk -C
