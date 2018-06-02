<p align="center">
<img src="https://img.shields.io/dub/l/vibe-d.svg">
<img src="https://img.shields.io/docker/stars/_/raffaeldutra/docker-gohugo.svg">
<img src="https://img.shields.io/docker/pulls/raffaeldutra/docker-gohugo.svg">
<img src="https://img.shields.io/docker/automated/raffaeldutra/docker-gohugo.svg">
<img src="https://img.shields.io/docker/build/raffaeldutra/docker-gohugo.svg">
</p>

## Como publicar o site

Publicação de código, ou seja, transforma todos os arquivos.md para HTML

```bash
docker run -it \
-v $(pwd):/src \
-v $(pwd)/public:/src/public raffaeldutra/gohugo
```

## Como rodar um servidor

Aqui é possível rodar Hugo em modo servidor

```bash
docker run -it \
-v $(pwd):/src \
-v $(pwd)/public:/src/public \
-p 1313:1313 raffaeldutra/gohugo /gohugo.sh -s
```
