install:
	go get -v | cd web && yarn install
watch-go:
	air -c .air.toml
run-go:
	go run main.go -config env.local
watch-web:
	cd web && yarn watch
build-docker:
	docker build -t gomodest .
run-docker:
	docker run -it --rm -p 4000:4000 --env-file env.local gomodest:latest
mailhog:
	docker run -d -p 1025:1025 -p 8025:8025 mailhog/mailhog