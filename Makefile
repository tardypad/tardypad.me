deploy:
	cd check && make deploy
	cd main && make deploy
	cd status && make deploy

.PHONY: deploy
