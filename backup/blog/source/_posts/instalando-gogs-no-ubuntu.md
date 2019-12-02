---
title: Instalando Gogs no Ubuntu
categories:
- Linux
- Ubuntu
date: 2017-04-05 11:28:54
tags:
- linux
- howto
- ubuntu
---


![](/images/gogs.png)

Nesse post mostro como é simples instalar o Gogs no Ubuntu 16.04 64Bits.
Para quem não conhece o Gogs, ele é uma aplicação escrito totalmente em Golang (GO) que cria um sistema Web parecido com Github ou Gitlab, como é feito em Golang é muito simples de Instalar e Configurar.
Você só vai precisar de um banco de dados, SQLITE3 ou Mysql e o git-core e um Servidor Real ou Virtual com Linux, ele é um Github privado para sua empresa ou projeto.
Em poucos passos a aplicação fica no ar.
<!-- more -->

![](/images/instalando_gogs_no_linux.png)


## Instalando o Gogs pelo Terminal

```bash
## Script Install on Debian, Ubuntu, OpenSUSE 64Bits !!!
wget https://gist.githubusercontent.com/jniltinho/280573e10206e31ab1c7/raw/6d9eb2c6abff9d61f903b2704c50926915b531cb/install_gogs_ubuntu.sh
bash install_gogs_ubuntu.sh
```

Mais detalhes acesse o script de instalação no gist.
https://gist.github.com/jniltinho/280573e10206e31ab1c7


## Video de Instalação do Gogs no Debian

{% youtube 77lQMB3bExg %}

## Links
 * http://gogs.io/
 * https://github.com/gogits/gogs/
 * http://obahua.com/


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}