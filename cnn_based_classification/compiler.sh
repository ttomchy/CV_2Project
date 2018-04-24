rm *.bbl *.blg *.aux *.log *.out *.dvi *.fls *.xdv *.fdb_latexmk
xelatex report.tex
bibtex report.aux
xelatex report.tex
xelatex report.tex
rm *.bbl *.blg *.aux *.log *.out *.dvi *.fls *.xdv *..fdb_latexmk
xdg-open ./report.pdf
clear
