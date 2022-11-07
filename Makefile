SHELL=/bin/bash

PHONY: build docker generate create-list

build:
	go build -o protoc-gen-liquibasecli-orb

docker:
	docker build -t liquibasecli-orb-protobuf-generator:$(VERSION) . --build-arg VERSION=$(VERSION)

create-list: docker
	docker run --rm -v $(PWD):/proto liquibasecli-orb-protobuf-generator:$(VERSION) --output-file=commands.json list-commands

generate: build docker
	docker run --rm -v $(PWD):/proto liquibasecli-orb-protobuf-generator:$(VERSION) generate-protobuf --output-dir /proto
	for f in *.proto; do \
		PATH=$(PWD):$(PATH) ./create-action.sh "$${f%.*}" $(VERSION); \
	done
	rm global_options.proto