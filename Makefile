.ONESHELL:
SHELL = /bin/bash

fish-cluster: build run

build:
	sudo docker build --tag docker-only-project .

run:
	sudo docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker-only-project up

kill:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker-only-project down

clean:
	docker rm -f $(docker ps -qa)

cleandb:
	docker volume rm fish-db

