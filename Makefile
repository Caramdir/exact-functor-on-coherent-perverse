all:
	mkdir -p arXiv
	cp MeasuringPerverseCoherents.tex arXiv
	$(MAKE) -C arXiv all

clean:
	$(MAKE) -C arXiv clean
