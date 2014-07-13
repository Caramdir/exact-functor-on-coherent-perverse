all:
	mkdir -p compositio
	cp MeasuringPerverseCoherents.tex compositio
	$(MAKE) -C compositio all
