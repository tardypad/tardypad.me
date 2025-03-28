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
		-e '/resume_crisp.html/ {r root/includes/resume_crisp.html' -e 'd }' \
		root/resume.html > build/resume.html
	cp root/base.css root/index.css root/resume.css build/
	ln -sf resume.html build/resume

install:
	mkdir -p $(DESTDIR)/srv/http/main
	cp -rL root/* $(DESTDIR)/srv/http/main
	mkdir -p $(DESTDIR)/etc/nginx/http.d
	cp nginx.conf $(DESTDIR)/etc/nginx/http.d/main.conf

watch:
	find -L root/ -type f | entr -c make

deploy:
	rsync -azL --delete root/ chestnut:/srv/http/main/

clean:
	rm -rf build

.PHONY: build clean deploy install watch
