build:
	mkdir -p build
	sed -e '/logo.svg/ {r root/logo.svg' -e 'd }' root/index.html > build/index.html
	sed -e '/resume_header.html/ {r root/includes/resume_header.html' -e 'd }' \
		-e '/resume_about.html/ {r root/includes/resume_about.html' -e 'd }' \
		-e '/resume_education.html/ {r root/includes/resume_education.html' -e 'd }' \
		-e '/resume_languages.html/ {r root/includes/resume_languages.html' -e 'd }' \
		-e '/resume_personal.html/ {r root/includes/resume_personal.html' -e 'd }' \
		-e '/resume_bbraun.html/ {r root/includes/resume_bbraun.html' -e 'd }' \
		-e '/resume_smile.html/ {r root/includes/resume_smile.html' -e 'd }' \
		-e '/resume_m2mobi.html/ {r root/includes/resume_m2mobi.html' -e 'd }' \
		-e '/resume_leaseweb.html/ {r root/includes/resume_leaseweb.html' -e 'd }' \
		root/resume.html > build/resume.html
	cp root/style.css build/
	ln -sf resume.html build/resume

watch:
	find root/ src/ -type f | entr -c make

deploy:
	rsync -az --delete root/ chestnut:/srv/main/

clean:
	rm -rf build

.PHONY: build clean deploy watch
