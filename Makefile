deploy:
	cd sites/check && make deploy
	cd sites/main && make deploy
	cd sites/status && make deploy

.PHONY: deploy
