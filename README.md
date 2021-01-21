# Elastic FunctionBeat

https://www.elastic.co/beats/functionbeat

## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities

In order to run this container you'll need docker installed.

- [Windows](https://docs.docker.com/windows/started)
- [OS X](https://docs.docker.com/mac/started/)
- [Linux](https://docs.docker.com/linux/started/)

### Usage

Run

```shell
docker run -it -p 8080:8080 -v $(pwd)/:/home/coder/project mobomo/vscode_php:latest
```

Need to run within docker compose?

    ide:
        container_name: '${PROJECT_NAME}_ide'
        image: mobomo/vscode_php:latest
        volumes:
          - ./:/home/coder/project
        ports:
            - '8080:8080'

