all:
	sed -i -e 's/ι/i/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/μ/\\mu /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ϕ/\\phi /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/φ/\\phi /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/Γ/\\Gamma /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/τ/\\tau /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ε/\\epsilon /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ω/\\omega /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ℂ/\\mathbb{C}/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ℤ/\\mathbb{Z}/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ℝ/\\mathbb{R}/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/∈/\\in /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/≤/\\leq /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/≥/\\geq /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/∩/\\cap /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/₁/_1/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/₂/_2/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/¹/^1/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/²/^2/g' MeasuringPerverseCoherents.tex
	sed -i -e 's/→/\\to /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ / /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/ / /g' MeasuringPerverseCoherents.tex
	sed -i -e 's/\\O/\\sheaf{O}/g' MeasuringPerverseCoherents.tex
	latexmk --pdf MeasuringPerverseCoherents.tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.pdf *.run.xml
