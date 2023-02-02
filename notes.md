### Build a docker container with a Dockerfile.dev

-f means use a specific file

```
   docker build -f Dockerfile.dev .
```

### Docker volumes (update changes)

1. {}: put a bookmark on the node_modules folder
2. {}: map the pwd into the /app folder

```
   docker run -p port:port { -v /app/node_modules } { -v $(pwd):/app } <image id>
```
