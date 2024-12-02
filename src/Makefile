NAME = cadictua
build:
	@go build -o ./$(NAME)

install:
	@go build -o /usr/bin/$(NAME)

run: build
	@./$(NAME)

test:
	@go run main.go тест -rod=show
