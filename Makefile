install:
	cd check && make install
	cd files && make install
	cd main && make install
	cd pkgs && make install
	cd status && make install

deploy:
	cd check && make deploy
	cd main && make deploy
	cd status && make deploy

.PHONY: deploy install
