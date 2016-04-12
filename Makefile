all: clean gulp insert-host index.php

clean:
	rm -f release.tar.gz

gulp:
	gulp;

download-swag:
	wget http://u200053.tool.tfn.dev01.monohq.com/api.php/doc -O dist/swagger.json

insert-host: download-swag
	php insertHost.php "demoapi.v5demo01.monosolutions.com" dist/swagger.json
index.php:
	cp dist/index.html dist/index.php
release: all
	tar cvzf release.tar.gz -C dist .
