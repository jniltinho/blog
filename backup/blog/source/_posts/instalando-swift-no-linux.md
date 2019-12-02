---
title: Instalando Swift 3.1 no Ubuntu
categories:
- Linux
- Ubuntu
- Swift
date: 2017-05-05 19:40:03
tags:
- linux
- ubuntu
- swift
---

![](/images/swift.png)

## Sobre a linguagem Swift
Nesse howto mostro como instalar a linguagem Swift versão 3.1.1 no Ubuntu 16.04 64Bits.

Criada pela Apple, Swift é uma linguagem de programação destinada ao desenvolvimento de aplicativos para as plataformas da marca, como Mac OS, iOS, Apple Watch e Apple TV.
<!-- more -->

Swift é open source e foi projetada também com o objetivo de proporcionar liberdade para os programadores. Possui sintaxe simples, performance e possibilidade incorporar códigos em Objective-C (antecessor ao Swift).

A linguagem Swift vem ganhando cada vez mais espaço no mercado de TI. Afinal de contas, se você deseja trabalhar com os produtos da Apple, você precisa aprender Swift ou Objective-C. E, convenhamos, a Apple ocupa uma fatia substancial do mercado de TI.
Caso você queira saber mais sobre linguagens de programação sugiro que [leia esse artigo](/2017/05/linguagens-de-programacao/) aqui no [Blog](http://www.linuxpro.com.br).



## **➜ Primeiro Passo:** Execute os comandos no Terminal

```bash
sudo su
apt-get install clang
cd /usr/local/
wget https://swift.org/builds/swift-3.1.1-release/ubuntu1604/swift-3.1.1-RELEASE/swift-3.1.1-RELEASE-ubuntu16.04.tar.gz
tar -xvf swift-3.1.1-RELEASE-ubuntu16.04.tar.gz
rm -f swift-3.1.1-RELEASE-ubuntu16.04.tar.gz
mv swift-3.1.1-RELEASE-ubuntu16.04 swift
echo 'export PATH=$PATH:/usr/local/swift/usr/bin' >> /etc/profile
source /etc/profile
swift --version
```


## Links

  * https://swift.org/
  * https://swift.org/getting-started/#installing-swift
  * https://swift.org/download/#releases

{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}