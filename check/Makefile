build:
	mkdir -p build
	rm -f build/links
	find lists -type f | sort | xargs -n1 basename | while read l; do \
		TITLE=$$( sed -n '1s/^# //p' lists/$$l ); \
		ID=0; \
		rm -f build/items; \
		sed '1d' lists/$$l | while read i; do \
			ID=$$(( ID + 1 )); \
			sed -e "s/{ID}/$$ID/g" -e "s/{ITEM}/$$i/g" templates/item.html >> build/items; \
		done; \
		sed -e "s/{TITLE}/$$TITLE/g" -e '/{ITEMS}/ {r build/items' -e 'd }' templates/list.html > root/$$l.html; \
		printf '<a href="%s">%s</a>\n' $$l "$$TITLE" >> build/links; \
	done
	sed -e '/{LINKS}/ {r build/links' -e 'd }' templates/index.html > root/index.html

install:
	mkdir -p $(DESTDIR)/srv/http/check
	cp -rL root/* $(DESTDIR)/srv/http/check
	mkdir -p $(DESTDIR)/etc/nginx/http.d
	cp nginx.conf $(DESTDIR)/etc/nginx/http.d/check.conf

deploy:
	rsync -azL --delete root/ chestnut:/srv/http/check/

clean:
	rm -rf build

.PHONY: build clean deploy install
