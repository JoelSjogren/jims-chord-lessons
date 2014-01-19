all:
	lilypond-book main.tex --output build && \
	cd build && latex main.tex && \
	dvips -Ppdf main.dvi && ps2pdf main.ps
	cp build/main.pdf .
