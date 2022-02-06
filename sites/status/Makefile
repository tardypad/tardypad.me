deploy:
	rsync -az --delete root/ chestnut:/srv/status/
	rsync -az scripts/ chestnut:~/bin/

.PHONY: deploy
