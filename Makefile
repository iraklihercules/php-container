
.PHONY:
start:
	docker compose up -d

.PHONY:
stop:
	docker compose stop

.PHONY:
build:
	docker compose build

.PHONY:
down:
	docker compose down

.PHONY:
rebuild: down build

.PHONY:
ps:
	docker compose ps

.PHONY:
shell-root:
	docker exec -it -u root php-laboratory-app bash

.PHONY:
shell:
	docker exec -it -u 1000:1000 php-laboratory-app bash

.PHONY:
db-dump:
	docker exec -it php-laboratory-mysql bash -c '/backup/db_dump.sh'

.PHONY:
db-restore:
	docker exec -it php-laboratory-mysql bash -c '/backup/db_restore.sh'
