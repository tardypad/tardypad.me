deploy:
	rsync -az --delete root/ chestnut:/srv/http/status/
	rsync -az scripts/ chestnut:~/bin/

.PHONY: deploy
