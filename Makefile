all: cv_es.html cv_es.pdf cv_es.docx cv_es.txt

cv_es.html: cv_es.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o cv_es.html cv_es.md

cv_es.pdf: cv_es.html
	wkhtmltopdf cv_es.html cv_es.pdf

cv_es.docx: cv_es.md
	pandoc --from markdown --to docx -o cv_es.docx cv_es.md

cv_es.txt: cv_es.md
	pandoc --standalone --smart --from markdown --to plain -o cv_es.txt cv_es.md

clean:
	rm -f *.html *.pdf *.docx *.txt
