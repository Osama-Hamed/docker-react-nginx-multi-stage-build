# Dockerized React and Nginx multi stage build app.

Dockerized React and Nginx multi stage build app.

## Build the image

```bash
docker build -t react-nginx-img .
```

## Run the container

```bash
docker run --name react-nginx-con \
 --rm \
 -p 8080:80 \
 react-nginx-img
```
