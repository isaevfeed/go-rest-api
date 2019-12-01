build:
		go build -v ./cmd/apiserver

test:
		go test -v -race -timeout 30s ./...

migrate up:
		migrate -path migrations -database "postgres://localhost/restapi_dev?sslmode=disable" up

migrate down:
		migrate -path migrations -database "postgres://localhost/restapi_dev?sslmode=disable" down