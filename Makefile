default:
	latex prop
	-bibtex prop
	latex prop
	latex prop
	dvips -t letter prop -o
	ps2pdf prop.ps prop.pdf

whitepaper: whitepaper.tex
	latex whitepaper
	-bibtex whitepaper
	latex whitepaper
	latex whitepaper
	dvips -t letter whitepaper -o
	ps2pdf whitepaper.ps whitepaper.pdf

facilities: facilities.tex
	latex facilities
	dvips -t letter facilities -o
	ps2pdf facilities.ps facilities.pdf

supdocslist: supdocslist.tex
	latex supdocslist
	dvips -t letter supdocslist -o
	ps2pdf supdocslist.ps supdocslist.pdf

budget: budgetjustify.tex
	latex budgetjustify
	dvips -t letter budgetjustify -o
	ps2pdf budgetjustify.ps budgetjustify.pdf

data: data.tex
	latex data
	dvips -t letter data -o
	ps2pdf data.ps data.pdf

clean:
	/bin/rm -f *.aux prop.pdf prop.ps *.log *.dvi *.bbl *.blg facilities.ps facilities.pdf budgetjustify.ps budgetjustify.pdf data.ps data.pdf whitepaper.ps whitepaper.pdf
