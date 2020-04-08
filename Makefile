pdf:
	pandoc \
	   --pdf-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
           --toc \
	   -V linkcolor:red \
           -V urlcolor:red \
	   -o SSH_tutorial.pdf \
	   SSH_tutorial.org

clean:
	rm -f *pdf *html

html:
	pandoc --toc -o SSH_tutorial.html SSH_tutorial.org 
