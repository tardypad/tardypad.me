build: root/resume_content.html
	mkdir -p build
	sed -e '/logo.svg/ {r root/logo.svg' -e 'd }' root/index.html > build/index.html
	sed -e '/resume_content.html/ {r root/resume_content.html' -e 'd }' root/resume.html > build/resume.html
	cp root/styles.css build/
	ln -sf resume.html build/resume

root/resume_content.html: src/resume.md
	cmark $< > $@

watch:
	find root/ src/ -type f | entr -c make

clean:
	rm -rf build

.PHONY: build clean watch
