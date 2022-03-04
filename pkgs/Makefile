install:
	mkdir -p $(DESTDIR)/srv/http/pkgs
	mkdir -p $(DESTDIR)/etc/nginx/http.d
	cp nginx.conf $(DESTDIR)/etc/nginx/http.d/pkgs.conf
	@printf 'damien:%s\n' `openssl passwd -apr1 "$(HTPASSWD)"` > $(DESTDIR)/etc/nginx/htpasswd_pkgs

.PHONY: install
