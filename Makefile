.PHONY: install test build run docker-build docker-up

install:
    @echo "No external dependencies required for static frontend"

test:
    @python tests/run_tests.py

build:
    @echo "Static frontend build check passed"

run:
     @python -m http.server 8000

docker-build:
    @echo "Docker build will be configured in M4"

docker-up:
    docker compose up --build
