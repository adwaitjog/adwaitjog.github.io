
all: latex_part 
	dvips -Ppdf -P cmz -Pdownload35 -j0 -G0 -t letter -o adwait-cv.ps adwait-cv.dvi
	ps2pdf14 -dPDFSETTINGS=/prepress -dEmbedAllFonts=true adwait-cv.ps
	chmod 777 *.*
	make clean
latex_part:
	latex adwait-cv; latex adwait-cv; latex adwait-cv;
adwait-cv.pdf:
	ps2pdf adwait-cv.ps adwait-cv.pdf
clean:
	rm -f adwait-cv.aux   adwait-cv.bbl   adwait-cv.blg  adwait-cv.brf   adwait-cv.dvi   adwait-cv.log  adwait-cv.ps adwait-cv.out 
