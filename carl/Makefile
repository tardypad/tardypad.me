install:
	mkdir -p $(DESTDIR)/etc/nginx/http.d
	cp nginx.conf $(DESTDIR)/etc/nginx/http.d/carl.conf
	@printf 'damien:%s\n' `openssl passwd -apr1 "$(HTPASSWD)"` > $(DESTDIR)/etc/nginx/htpasswd_carl

.PHONY: install
