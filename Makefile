IMAGE_NAME=ai-dev-homework

.PHONY: build test verify clean

build:
	docker build -t $(IMAGE_NAME) .

test: build
	docker run --rm $(IMAGE_NAME)

verify: test
	@echo "make verify passed"

clean:
	docker image rm $(IMAGE_NAME) || true
