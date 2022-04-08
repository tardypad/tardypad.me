install:
	+@cd carl && make HTPASSWD="$(HTPASSWD_CARL)" install
	+@cd check && make install
	+@cd files && make HTPASSWD="$(HTPASSWD_FILES)" install
	+@cd main && make install
	+@cd pkgs && make HTPASSWD="$(HTPASSWD_PKGS)" install
	+@cd status && make install

deploy:
	+cd check && make deploy
	+cd main && make deploy
	+cd status && make deploy

.PHONY: deploy install
