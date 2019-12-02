---
title: Instalando HHVM no Ubuntu
categories:
- Linux
- Ubuntu
- HHVM
date: 2017-04-05 21:00:03
tags:
- linux
- ubuntu
- hhvm
- howto
---

![](/images/hhvm-digital-ocean-com-wordpress.png)

Para Instalar a maquina virtual criada pelo Facebook no Ubuntu 16.04 ou 14.04 64Bits, execute os passos abaixo no terminal, você vai precisar ter permissão de super usuário no Ubuntu.

Comparação entre o [PHP 7 vs HHVM](https://kinsta.com/blog/the-definitive-php-7-final-version-hhvm-benchmark/) versão 3.10, esse [Benchmark](https://kinsta.com/blog/the-definitive-php-7-final-version-hhvm-benchmark/) foi feito em 18 de Abril de 2016, até agora muita coisa mudou e o HHVM ficou ainda mais rápido, hoje ela está na versão 3.15.2.
<!-- more -->

```bash
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
sudo add-apt-repository "deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get install hhvm
```

Depois de instalado execute esses comandos no Terminal:

```bash
hhvm --version
## A saída vai ser essa informação abaixo.
HipHop VM 3.15.2 (rel)
Compiler: tags/HHVM-3.15.2-0-g83ac3e5e3f5657be0cf4c55884044f86a7818b90
Repo schema: 608339137764e8365964a1adaa7a27d125b6076f
```

Depois de instalado corretamente, você pode seguir esse [tutorial](https://docs.hhvm.com/hhvm/getting-started/getting-started#test-hhvm) e criar seus primeiros programas em PHP que vai rodar no HHVM.

Já testei diversas aplicacoes e frameworks feito em PHP que roda muito melhor no HHVM, tais como Wordpress, Laravel Framework, MediaWiki, Dokuwiki entre muitos outros projetos que rodam com muito mais qualidade no HHVM.
Para mais informações da documentação acesse o [Link do HHVM](https://docs.hhvm.com/hhvm/).


## About HHVM
[HHVM](http://hhvm.com/) is an open-source virtual machine designed for executing programs written in Hack and PHP. HHVM uses a just-in-time (JIT) compilation approach to achieve superior performance while maintaining the development flexibility that PHP provides.

HHVM supports Hack, PHP 5 and the major features of PHP 7. We are aware of minor incompatibilities, so please open issues when you find them. HHVM also supports many extensions as well. 

