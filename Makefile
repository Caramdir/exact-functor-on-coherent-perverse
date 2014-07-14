all:
	latexmk --pdf --pdflatex=lualatex MeasuringPerverseCoherents.tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.pdf *.run.xml
