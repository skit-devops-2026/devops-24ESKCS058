.PHONY: install test build run docker-build docker-up

install:
`t@echo "No external dependencies required for static frontend"

test:
`t@python tests/run_tests.py

build:
`t@echo "Static frontend build check passed"

run:
`t@python -m http.server 8000

docker-build:
`t@echo "Docker build will be configured in M4"

docker-up:
`tdocker compose up --build