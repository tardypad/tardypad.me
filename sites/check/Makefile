build:
	mkdir -p build
	find lists -type f | sort | xargs -n1 basename | while read l; do \
		TITLE=$$( sed -n '1s/^# //p' lists/$$l ); \
		ID=0; \
		rm -f build/items; \
		sed '1d' lists/$$l | while read i; do \
			ID=$$(( ID + 1 )); \
			sed -e "s/{ID}/$$ID/g" -e "s/{ITEM}/$$i/g" templates/item.html >> build/items; \
		done; \
		sed -e "s/{TITLE}/$$TITLE/g" -e '/{ITEMS}/ {r build/items' -e 'd }' templates/list.html > root/$$l.html; \
	done

deploy:
	rsync -az --delete root/ surg:/usr/local/www/check/

clean:
	rm -rf build

.PHONY: build clean deploy
