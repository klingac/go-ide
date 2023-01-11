PROJDIR=$(shell pwd)
IMAGE=go-ide

run:
	docker container run --rm --interactive  \
	  --tty \
	  --name go-ide \
	  --mount type=bind,source="$(PROJDIR)",target="/src" \
	  $(IMAGE)
.PHONY: run

update:
	docker pull $(IMAGE)
.PHONY: build

build:
	docker build -t $(IMAGE) .
.PHONY: build
