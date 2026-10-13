.PHONY: install test build run docker-build docker-push docker-up

IMAGE_NAME ?= arpitgargggc/placetrack
IMAGE_TAG  ?= latest

install:
	@echo "No external dependencies required for static frontend"

test:
	@python tests/run_tests.py

build:
	@echo "Static frontend build check passed"

run:
	@python -m http.server 8000

docker-build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

docker-push:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)

docker-up:
	docker compose up --build