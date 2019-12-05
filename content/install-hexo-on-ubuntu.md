+++
title = "Instalando Hexo no Ubuntu"
description = "Instalando Hexo no Ubuntu"
date = 2017-04-16T10:54:00Z
draft = false
slug = "install-hexo-on-ubuntu"

[taxonomies]
categories = ["Howtos"]
tags = ["hexo", "www", "linux", "html"]

[extra]
author = "jniltinho"
comments = true
+++

![](/images/Install_Hexo_Ubuntu.png)

## Sobre o Hexo

O Hexo é framework para blogs escrito em Nodejs; diferentemente do Wordpress ele consegue gerenciar o blogs /sites estáticos , o Hexo é rápido, simples e poderoso que é o seu diferencial, como seu conteúdo é estático e não necessita de um banco de dados, logo ele pode ser hospedado em praticamente qualquer ambiente, incluindo no próprio GitHub Pages de maneira realmente simples.

## Principais características do Hexo

* Rapidez para gerar os arquivos, pois o Node ajuda bastante
* Basta um simples comando para publicação hexo deploy e o seu site já está no ar.
* O Hexo usa o Markdown que é uma forma de você escrever ( seria um HTML simplificado)
* Suporta Plugins e Temas, bem parecido com o Wordpress.

{{ youtube(id="Ii4le3TJqTw") }}

## Instalando o Hexo no Ubuntu 16.04/18.04/19.04

Para ajudar na instalacao do NodeJS no Ubuntu vou utilizar o NVM.
O nvm(Node Version Manager) é um script que gerencia diferentes versões do NodeJS.
Para saber mais sobre o NVM veja esse link.

```bash
sudo apt-get update
sudo apt-get install -y build-essential git-core wget curl
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
source ~/.bashrc
nvm install node
npm install hexo-cli -g
```

## Criando seu primeiro Blog

```bash
hexo init blog
cd blog
npm install
```

## Criando seu primeiro post

```bash
hexo new "My New Post"
```

## Rodando o servidor

```bash
hexo server
```

## Links

* https://github.com/creationix/nvm#install-script
* https://hexo.io/
* https://hexo.io/docs/
* https://ericdouglas.github.io/2016/08/21/how-to-create-a-blog-with-hexo/
