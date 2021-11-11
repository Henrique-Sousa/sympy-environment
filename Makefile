.PHONY: all
all: clean see

.PHONY: see
see: out.pdf
	evince out.pdf

out.pdf: out.latex
	pdflatex out.latex

out.latex: head.latex out.txt foot.latex
	cat head.latex out.txt foot.latex > out.latex

out.txt:
	python main.py > out.txt
	
.PHONY: clean
clean:
	rm -f *.aux *.log out.pdf out.txt out.latex
