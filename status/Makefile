install:
	mkdir -p $(DESTDIR)/srv/http/status
	cp -r root/* $(DESTDIR)/srv/http/status
	mkdir -p $(DESTDIR)/etc/nginx/http.d
	cp nginx.conf $(DESTDIR)/etc/nginx/http.d/status.conf
	mkdir -p $(DESTDIR)/home/damien/bin
	cp scripts/set-status $(DESTDIR)/home/damien/bin/set-status

deploy:
	rsync -az --delete root/ chestnut:/srv/http/status/
	rsync -az scripts/ chestnut:~/bin/

.PHONY: deploy install
