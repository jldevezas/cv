CV_TEX_FILE=cv.tex
CV_PDF_FILE=$(basename $(CV_TEX_FILE)).pdf

RESUME_TEX_FILE=resume.tex
RESUME_PDF_FILE=$(basename $(RESUME_TEX_FILE)).pdf

all: cv resume

cv:
	latexmk -pdfxe $(CV_TEX_FILE)

resume:
	latexmk -pdfxe $(RESUME_TEX_FILE)

dev-cv:
	latexmk -pdfxe -pvc $(CV_TEX_FILE)

dev-resume:
	latexmk -pdfxe -pvc $(RESUME_TEX_FILE)

clean:
	latexmk -c
	rm -f *.xdv

dist-clean: clean
	latexmk -C
