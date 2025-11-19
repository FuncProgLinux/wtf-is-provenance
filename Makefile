all: build

build:
	CGO_ENABLED=0 go build -ldflags="-s -w" -o app main.go

run:
	CGO_ENABLED=0 go run main.go

image:
	docker build -t ghcr.io/funcproglinux/tinyapi:latest .

env:
	guix shell -m ./manifest.scm
