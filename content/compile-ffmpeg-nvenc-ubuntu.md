+++
title = "Compilar FFMPEG com NVENC no Ubuntu"
description = "Compilar FFMPEG com NVENC no Ubuntu"
date=2017-04-10T10:54:00Z
draft = false
slug = "compile-ffmpeg-nvenc-ubuntu.md"

[taxonomies]
categories = ["Howtos"]
tags = ["obs", "www", "linux", "compile", "ffmpeg", "gravar"]

[extra]
author = "jniltinho"
comments = true
+++

[![](/images/compile_ffmpeg.png)](https://www.youtube.com/watch?v=xdltF4HvfjE)

## Sobre o NVENC

NVENC é o nome dado ao bloco de ASIC IP da Nvidia que executa codificação de vídeo. Ele foi introduzido na GeForce série 600 baseada na arquitetura Kepler em março de 2012, como um recurso de produto que tira a codificação de vídeo H264 executada na CPU passando esse processo para a GPU. O codificador de vídeo funciona com a captura de jogo, tela e é suportado em muitos outros programas de streaming e gravação, como OBS, Bandicam e FFMPEG.

Nesse [video](https://www.youtube.com/watch?v=xdltF4HvfjE) que criei para o Canal Oficina do Tux mostro como compilar o FFMPEG com Suporte para NVENC, usando o [SDK da NVIDIA](https://developer.nvidia.com/nvidia-video-codec-sdk) versão 6.0.1.

{{ youtube(id="xdltF4HvfjE") }}

Nesse [link esta o script](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125) para você compilar o FFMPEG 3.2.1 com o SDK NVIDIA 7.0.1 e a ultima versão do software de captura de tela [obs-studio](https://obsproject.com/), na sua versão de desenvolvimento.
<!-- more -->

{% youtube xdltF4HvfjE %}

Caso você não queira compilar ou não saiba, você pode usar a versão já compilada por mim que está nesse link [Github do ODT](https://github.com/jniltinho/oficinadotux).
Para você instalar essa versão compilada execute esses [passos](https://github.com/jniltinho/oficinadotux#obs-studio-portable-git--ffmpeg-32).

Lembrando que essa versão só funciona no Ubuntu 16.04 64Bits ou derivados dessa versão.
Mas você precisa ter uma placa de video NVIDIA atual com Drivers atualizados.

Com esse codec da NVIDIA você vai acelerar a edição e captura de video no seu Ubuntu e nos Softwares como [OBS-STUDIO](https://obsproject.com/) e [Simplescreenrecorder](http://www.maartenbaert.be/simplescreenrecorder/).

[Compile FFMPEG 3.2.1 + NVENC SDK 7.0.1 + OBS-STUDIO](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125)

## Links

* https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125
* https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7
* https://github.com/jniltinho/oficinadotux
* http://www.diolinux.com.br/2016/07/como-instalar-o-ffmpeg-nvenc-no-ubuntu.html

{% quote(author="Nilton") %}

* Chegamos ao fim do artigo, achou o que estava procurando?
* Faltou alguma informação?
* Alguma parte ficou mal redigida?
* Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% end %}