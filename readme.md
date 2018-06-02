![!](https://img.shields.io/dub/l/vibe-d.svg) ![!](https://img.shields.io/docker/stars/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/pulls/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/automated/raffaeldutra/docker-gohugo.svg) ![!](https://img.shields.io/docker/build/raffaeldutra/docker-gohugo.svg) 


## Docker Hub image repository

You can find this image in the link below.

[https://hub.docker.com/r/raffaeldutra/docker-gohugo](https://hub.docker.com/r/raffaeldutra/docker-gohugo/)


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
-v $(pwd)/public:/src/public \
-p 1313:1313 raffaeldutra/docker-gohugo /gohugo.sh -s
```
