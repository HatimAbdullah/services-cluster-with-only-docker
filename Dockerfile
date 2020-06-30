FROM alpine

RUN apk add docker docker-compose make bash git && git clone https://github.com/HatimAbdullah/docker-only-project.git

WORKDIR /docker-only-project

ENV DOCKER_BUILDKIT=1

ENTRYPOINT ["/usr/bin/make"]

CMD ["runfish]
