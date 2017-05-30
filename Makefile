giteadb:
	docker run -d \
		--name=giteadb \
		-e MYSQL_ROOT_PASSWORD=netserver \
		-e MYSQL_DATABASE=gitea \
		-e MYSQL_USER=gitea \
		-e MYSQL_PASSWORD=netserver \
		-v $$(pwd)/gitea_data:/var/lib/mysql \
		-p 3306:3306 \
		mariadb \
			--character-set-server=utf8 \
			--collation-server=utf8_general_ci \
			--default-storage-engine=innodb \
			--innodb_file_per_table=on \
			--max_connections=4096

gitea:
	docker run -d \
		--name gitea \
		-p 3000:3000 \
		-p 3022:22 \
		gitea/gitea

remove:
	docker rm -f gitea

removedb:
	docker rm -f giteadb

remove_all: remove removedb

giteain:
	docker exec -ti gitea bash

restart:
	docker restart gitea
