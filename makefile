FILES = *sty *dtx *pdf README  makefile latexmkrc
dist: indextools.pdf indextools.sty
	@$(RM) ../indextools.zip
	rm -rf indextools
	mkdir indextools	
	ln $(FILES) indextools
	zip -r ../indextools.zip  indextools
README: README.md
	cp README.md README
%.pdf %.sty: %.dtx
	latexmk *dtx
 
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*
