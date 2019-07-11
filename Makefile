up:
	find . -mindepth 2 -type f -name Makefile -execdir make up \;

down:
	find . -mindepth 2 -type f -name Makefile -execdir make down \;

network-up:
	docker network create --driver bridge --scope swarm httpd

network-down:
	docker network rm httpd
