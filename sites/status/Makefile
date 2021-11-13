deploy:
	rsync -az --delete root/ chestnut:/usr/local/www/status/
	rsync -az scripts/ chestnut:~/bin/

.PHONY: deploy
