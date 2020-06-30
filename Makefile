.ONESHELL:
SHELL = /bin/bash

build:
	docker build --tag docker-only-project .

run:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker-only-project up

kill:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker-only-project down

clean:
	docker rm -f $(docker ps -qa)

cleandb:
	docker volume rm fish-db

