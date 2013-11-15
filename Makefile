dist:
	tar czvf microlocal_perverse.tar.gz *.tex *.bbl *.sty *.cls b* cbx lbx

prepare:
	sed -i -e 's/ι/i /g' microlocal_perverse.tex
	sed -i -e 's/μ/\\mu /g' microlocal_perverse.tex
	sed -i -e 's/ϕ/\\Phi /g' microlocal_perverse.tex
	sed -i -e 's/Γ/\\Gamma /g' microlocal_perverse.tex
	sed -i -e 's/τ/\\tau /g' microlocal_perverse.tex
	sed -i -e 's/ε/\\epsilon /g' microlocal_perverse.tex
	sed -i -e 's/ω/\\omega /g' microlocal_perverse.tex
	sed -i -e 's/ℂ/\\mathbb{C}/g' microlocal_perverse.tex
	sed -i -e 's/ℤ/\\mathbb{Z}/g' microlocal_perverse.tex
	sed -i -e 's/ℝ/\\mathbb{R}/g' microlocal_perverse.tex
	sed -i -e 's/∈/\\in /g' microlocal_perverse.tex
	sed -i -e 's/≤/\\leq /g' microlocal_perverse.tex
	sed -i -e 's/≥/\\geq /g' microlocal_perverse.tex
	sed -i -e 's/∩/\\cap /g' microlocal_perverse.tex
	sed -i -e 's/₁/_1/g' microlocal_perverse.tex
	sed -i -e 's/₂/_2/g' microlocal_perverse.tex
	sed -i -e 's/→/\\to /g' microlocal_perverse.tex

copy_biblatex:
	cp -r /usr/local/texlive/2013/texmf-dist/tex/latex/biblatex/* .
