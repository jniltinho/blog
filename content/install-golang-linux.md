+++
title = "Instalando Golang no Linux"
date = 2019-12-02T10:54:00Z
draft = false
+++

![](/images/golang.png)

## Sobre a linguagem Golang

Golang ou simplesmente Go é uma linguagem de programação criada pela Google e lançada em código livre em novembro de 2009. É uma linguagem compilada e focada em produtividade e programação concorrente, baseada em trabalhos feitos no sistema operacional chamado Inferno. O projeto inicial da linguagem foi feito em setembro de 2007 por Robert Griesemer, Rob Pike e Ken Thompson.
Atualmente, há implementações para Windows, Linux, Mac OS X e FreeBSD.
<!-- more -->
O foco da linguagem é a performance, buscando ótimos desempenhos tanto da compilação, quanto de processamento da aplicação. Go é multiplataforma, com suporte para Linux, Windows, MacOS, entre outros.
Caso você queira saber mais sobre linguagens de programação sugiro que [leia esse artigo](/2017/05/linguagens-de-programacao/) aqui no [Blog](http://www.linuxpro.com.br).

## Principais características

* Código aberto
* Combina recursos de alto e baixo nível
* Sintaxe simples, buscando facilidade para aprender e programar
* Altamente escalável
* Ótimo recurso de programação concorrente

A linguagem Go vem alcançando posições cada vez melhores nos rankings das linguagens de programação. Dropbox, Uber e SendGrid são alguns exemplos de empresas que utilizam essa tecnologia. No Brasil, a tecnologia ainda não é muito forte.

## Descrição

A sintaxe de Go é semelhante a C; uma variação é a declaração de tipos, a ausência de parênteses em volta das estruturas for e if. Possui coletor de lixo. Seu modelo de concorrência é baseado no CSP de Tony Hoare, além de possuir características do cálculo pi, como passagem por canal.

Algumas funcionalidades ausentes são tratamento de exceção, Herança, programação genérica, assert e sobrecarga de métodos. Os autores expressam abertura para discutir programação genérica, mas argumentam abertamente contra asserções e defendem a omissão de herança de tipos em favor da eficiência. Ao contrário de Java, vetores associativos são parte intrísceca da linguagem, assim como strings.

## **➜ Primeiro Passo:** Baixe o script e instale

Execute os passos abaixo como root, é só baixar o script com wget e executar, pode ser feito em qualquer distribuição Linux de 64Bits.
O script baixo o Go, a última versão estável e coloca na pasta /usr/local e depois adiciona o PATH no arquivo /etc/profile, simples e rápido, creio que essa seja a linguagem de programação mais fácil de instalar de todos os tempos.
Também não podemos esquecer que você precisa instalar o pacote git-core no seu Linux e criar uma pasta chamada GO no seu home, não precisa ser como root, use esse comando **mkdir ~/GO** para criar a pasta pelo terminal.


{{ gist(url="https://gist.github.com/jniltinho/8758e15a9ef80a189fce") }}

## Links

* https://golang.org/dl/
* https://golang.org/
* https://tour.golang.org/welcome/1
* https://gist.github.com/jniltinho/8758e15a9ef80a189fce

{% quote(author="Nilton") %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% end %}