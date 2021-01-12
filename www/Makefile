build: root/resume_content.html
	mkdir -p build
	sed -e '/logo.svg/ {r root/logo.svg' -e 'd }' root/index.html > build/index.html
	sed -e '/resume_content.html/ {r root/resume_content.html' -e 'd }' root/resume.html > build/resume.html
	cp root/style.css build/
	ln -sf resume.html build/resume

root/resume_content.html: src/resume.md
	cmark $< \
	| sed 's|^<\([^>]*\)>\(.*\) {\(.*\)}<.*|<\1 class="\3">\2</\1>|' \
	| sed 's|  *</|</|g' \
	> $@

watch:
	find root/ src/ -type f | entr -c make

deploy:
	rsync -az --delete root/ surg:/srv/www/

clean:
	rm -rf build

.PHONY: build clean deploy watch
