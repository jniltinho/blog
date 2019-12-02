---
title: Instalando o IRPF no Linux
categories:
- Linux
- IRPF
- Ubuntu
- Debian
date: 2017-04-16 15:40:03
tags: 
- linux
- ubuntu
- debian
- howto
- irpf
---

![](/images/irpf-2017-no-linux.png)

## Instalando o programa de Imposto de Renda no Linux

Chegou a hora de acertar as contas com o leão, por isso, se você quer fazer sua declaração do imposto de renda pessoa física no Linux, veja aqui como instalar o programa IRPF 2017 no Linux.
Para fazer sua declaração no Linux é preciso instalar o programa gerador da declaração (IRRF), que está disponível na página da [Receita Federal](https://idg.receita.fazenda.gov.br/interface/cidadao/irpf/2017/download/outros-sistemas-operacionais) em versões para vários sistemas.

<!-- more -->

## Pré Requisitos para instalar o programa IRPF 2017

Um dos pré requisitos para instalar o programa IRPF no Linux é a instalação do Java mais recente, é recomendável usar a versão 8 do [Java da Oracle](http://www.oracle.com/technetwork/pt/java/javase/downloads/index.html).


## IRPF 2017 no Ubuntu 16.04 64Bits
{% blockquote %}
**Execute os passos abaixo pelo terminal do seu Linux.**
{% endblockquote %}


## ➜ **Primeiro Passo:** Instalar o JAVA da Oracle
**Caso você já tenha o JAVA JDK instalado pode pular essa parte e ir direto ao segundo passo.**

```bash
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
```

## ➜ **Segundo Passo:** Instalar o IRPF 2017
**Esse passo deve ser executado no Terminal como usuário comum.**

```bash
## Para Sistemas de 64Bits
mkdir ~/IRPF_2017
cd ~/IRPF_2017/
wget --no-check-certificate http://downloadirpf.receita.fazenda.gov.br/irpf/2017/irpf/arquivos/IRPF2017Linux-x86_64v1.1.bin
chmod +x IRPF2017Linux-x86_64v1.1.bin
./IRPF2017Linux-x86_64v1.1.bin
## -------------------------------------------------------------------
## Para Sistemas de 32Bits
mkdir ~/IRPF_2017
cd ~/IRPF_2017/
wget --no-check-certificate http://downloadirpf.receita.fazenda.gov.br/irpf/2017/irpf/arquivos/IRPF2017Linux-x86v1.1.bin
chmod +x IRPF2017Linux-x86v1.1.bin
./IRPF2017Linux-x86v1.1.bin
```

## ➜ Java JRE em qualquer Distribuição Linux
**Caso você queira instalar o JRE em qualquer [distribuição Linux](https://pt.wikipedia.org/wiki/Distribui%C3%A7%C3%A3o_Linux) 64 Bits você pode usar os passos abaixo pelo terminal como root.**

```bash
sudo su
cd /usr/local/
wget --header 'Cookie: oraclelicense=a' http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz
tar -xvf jre-8u121-linux-x64.tar.gz
mv jre1.8.0_121 java
rm -f jre-8u121-linux-x64.tar.gz
echo 'JAVA_HOME=/usr/local/java
export JAVA_HOME
PATH=$PATH:$JAVA_HOME/bin
export PATH' >> /etc/profile
source /etc/profile
```

## Vídeo: Declarar IRPF 2017 Simplificado de Pessoa Física

{% youtube zT1iET95kaI %}



## Links

  * https://idg.receita.fazenda.gov.br/interface/cidadao/irpf/2017/download
  * https://idg.receita.fazenda.gov.br/
  * https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-debian-8
  * https://tecadmin.net/install-oracle-java-8-ubuntu-via-ppa/
  * https://www.youtube.com/watch?v=48VQWL5E_QE


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}