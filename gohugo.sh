#!/usr/bin/env sh
# Rafael Dutra <raffaeldutra@gmail.com>
# https://rafaeldutra.me

# -p para Publish (publicar conteúdo), ou seja, pega todos arquivos .md e
# transforma para  HTML

config=$2

if [ ! -z "${config}" ]; then
    hugoConfig="--config /src/config.toml,/src/${config}"
else
    hugoConfig="--config /src/config.toml"
fi

if [ "${1}" = "-p" ]; then
    hugo \
    $hugoConfig \
    --layoutDir /src/layouts \
    --themesDir /src/themes \
    --contentDir /src/content \
    --ignoreCache \
    --destination /src/public

# -s para Server (rodar servidor)
elif [ "${1}" = "-s" ]; then
    hugo server \
    $hugoConfig \
    --watch true \
    --bind 0.0.0.0 \
    --layoutDir /src/layouts \
    --themesDir /src/themes \
    --contentDir /src/content \
    --ignoreCache \
    --baseURL ${BASEURL}
fi

# Apenas informação para você saber em qual URL está rodando
echo $BASEURL
