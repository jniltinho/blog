---
title: Usando o Comando WGET
categories:
- Linux
- Ubuntu
- Zimbra
date: 2017-04-06 11:01:28
tags:
- linux
- ubuntu
- howto
- zimbra
---

![](/images/wget_command.png)

Antes de mais nada, todo mundo tem que conhecer esse comando, ele é maravilhoso e ajudou muita gente baixando aquele arquivo .iso de quase 2GB com aquela conexão discada ou uma conexão bem lenta que o download durou quase uma semana.
Com esse programa você pode pausar o download e continuar em outro momento.
Nesse post vou mostrar varias dicas sobre o **WGET**, eu uso em todos meus [scripts](https://gist.github.com/jniltinho) que precisa baixar algum arquivo da internet.
<!-- more -->
**GNU Wget** (ou apenas **WGET**, anteriormente Geturl, também escrito como seu nome de pacote, **wget**) é um programa de computador que recupera conteúdo de servidores web. É parte do Projeto GNU.
O W do seu nome deriva da **World Wide Web**. Ele suporta o download através dos protocolos **HTTP, HTTPS e FTP**.

Suas características incluem download recursivo, conversão de links para visualização offline de HTML local e suporte para proxies. Apareceu em 1996, coincidindo com o boom de popularidade da Web, causando seu uso amplo entre usuários Unix e distribuição com a maioria das principais distribuições Linux.
Escrito em C portátil, **Wget** pode ser facilmente instalado em qualquer sistema Unix-like. Os programadores têm portado Wget para muitos ambientes, incluindo Microsoft Windows, Mac OS X, OpenVMS, HP-UX, MorphOS e AmigaOS. Desde a versão 1.14 o **Wget** conseguiu salvar sua saída no formato WARC de arquivamento na web.


## Sua Historia
**Wget** descende de um programa anterior chamado Geturl do mesmo autor, cujo desenvolvimento começou em 1995. O nome mudou para **Wget** depois que o autor tomou conhecimento de um programa anterior do [Amiga](https://en.wikipedia.org/wiki/Amiga) chamado GetURL, escrito por James Burton em AREXX.

**Wget** preenchia uma lacuna no software de download da Web disponível em meados da década de 1990. Nenhum programa único poderia usar de forma confiável HTTP e FTP para baixar arquivos. Programas existentes ou FTP suportado (como NcFTP e dl) ou foram escritos em Perl, que ainda não era onipresente. Embora o **Wget** tenha sido inspirado por recursos de alguns dos programas existentes, ele suporta HTTP e FTP e pode ser construído usando apenas as ferramentas de desenvolvimento padrão encontradas em todos os sistemas Unix.

Naquela época, muitos usuários do Unix se debatiam em conexões de Internet discadas e universitárias extremamente lentas, levando a uma crescente necessidade de um agente de download que pudesse lidar com falhas de rede transitórias sem a ajuda do operador humano.

Em 2010, o analista de inteligência do Exército dos EUA, o PFC Chelsea Manning, usou **Wget** para baixar os 250.000 cabos diplomáticos dos EUA e 500.000 relatórios do Exército que passaram a ser conhecidos como registros da Guerra do Iraque e registros da Guerra do Afeganistão enviados à Wikileaks.


## Uso básico

```bash
# Download da iso do Ubuntu 16.04 64Bits
# O opção -c continua o download caso ocorra algum problema na hora de Baixar.
wget -c http://releases.ubuntu.com/16.04/ubuntu-16.04.1-desktop-amd64.iso
```

```bash
# Download the title page of example.com to a file
# named "index.html".
wget http://www.example.com/
```

```bash
# Download Wget's source code from the GNU ftp site.
wget ftp://ftp.gnu.org/pub/gnu/wget/wget-latest.tar.gz
```

```bash
# Download *.gif from a website
# (globbing, like "wget http://www.server.com/dir/*.gif", only works with ftp)
wget -e robots=off -r -l 1 --no-parent -A .gif ftp://www.example.com/dir/
```

```bash
# Download the title page of example.com, along with
# the images and style sheets needed to display the page, and convert the
# URLs inside it to refer to locally available content.
wget -p -k http://www.example.com/
```


```bash
# Download the entire contents of example.com
wget -r -l 0 http://www.example.com/
```


## Links

  * https://en.wikipedia.org/wiki/Wget


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}