deploy:
	rsync -az --delete root/ surg:/usr/local/www/status/
	rsync -az scripts/ surg:~/bin/

.PHONY: deploy
