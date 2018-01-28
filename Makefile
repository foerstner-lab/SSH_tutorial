pdf:
	pandoc \
	   --pdf-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -o SSH_tutorial.pdf \
	   SSH_tutorial.org
           # --toc 

clean:
	rm -f *pdf *html

html:
	pandoc --toc -o SSH_tutorial.html SSH_tutorial.org 
