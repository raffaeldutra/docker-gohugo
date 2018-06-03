# Gohugo Docker Image

![!](https://img.shields.io/dub/l/vibe-d.svg) ![!](https://img.shields.io/docker/stars/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/pulls/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/automated/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/build/raffaeldutra/docker-gohugo.svg)

You can find this image in the link below.

[https://hub.docker.com/r/raffaeldutra/docker-gohugo](https://hub.docker.com/r/raffaeldutra/docker-gohugo/)

# About content for your project

The simplest way is the better way, right? I hope so.

For those who will use Linux:

* You can share the "current" directory $(pwd) to /src folder inside of Docker container. This folder is used for Hugo.
* To publish your project, you can use the "public" directory, or whatever you want, but you need to pass the /src/public directory, that's what Hugo expects, at least for now.

## How to publish your website

Code publishment, convert all md files to HTML.

```bash
docker run -it \
-v $(pwd):/src \
-v $(pwd)/public:/src/public raffaeldutra/docker-gohugo
```

## How run a server

Here is the how you can do it.

```bash
docker run -it \
-v $(pwd):/src \
-p 1313:1313 raffaeldutra/docker-gohugo /gohugo.sh -s
```
