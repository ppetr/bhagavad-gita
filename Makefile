all: output/bhagavad_gita-dblatex.pdf output/bhagavad_gita-booklet.pdf

bhagavad_gita.dbk: bhagavad_gita.xml process.xsl
	xsltproc --output $@ process.xsl $<

output/bhagavad_gita-dblatex.ps: bhagavad_gita.dbk bhagavadgita.sty
	dblatex $< -t ps -o $@ \
		-P latex.unicode.use=1 \
		-P latex.encoding=utf8 \
		-P latex.class.options="11pt,a5paper" \
		--texstyle=$(PWD)/bhagavadgita.sty

output/bhagavad_gita-booklet.ps: output/bhagavad_gita-dblatex.ps
	psbook $< | \
		psnup -Pa5 -pa4 -2 | \
		sed 's/^%%DocumentPaperSizes: a5/%%DocumentPaperSizes: a4/g' \
		> $@

%.pdf: %.ps
	ps2pdf -dPDFSETTINGS=/printer $< $@


tmp/bhagavad_gita.tex: bhagavad_gita.dbk bhagavadgita.sty
	dblatex $< -t tex --texstyle=$(PWD)/bhagavadgita.sty -o $@