---
title: Install Redmine on Debian
categories:
- Linux
- Debian
date: 2017-04-06 10:05:03
tags:
- linux
- debian
- howto
- redmine
---

![](/images/install-redmine-debian.png)

## Sobre o Redmine

Redmine é um software livre, gerenciador de projetos baseados na web e ferramenta de gerenciamento de bugs. Ele contém calendário e gráficos de Gantt para ajudar na representação visual dos projetos e seus deadlines (prazos de entrega). Ele pode também trabalhar com múltiplos projetos.
O design do Redmine foi influenciado pelo Trac, um pacote de software semelhante.
O Redmine é escrito usando o framework Ruby on Rails. Ele é multiplataforma e suporta diversos Banco de Dados.
Além de ser um software multilíngue, também possibilita o uso integrado com vários repositórios tais como Svn, Git, Mercurial, Darcs, Cvs e Bazaar.
<!-- more -->

[Script de Setup](https://gist.github.com/jniltinho/66c64a33d8b0a515c95ea9750f8f69d5) do Redmine 3.3.2 no Debian 8.7 64Bits integrado com ISPConfig3, se você tiver o ISPConfig instalado no Debian 8.

```bash
## Install Redmine 3.3.2 Integrated with ISPConfig
## Se você tiver o ISPConfig3 instalado
cd /tmp/
wget https://gist.githubusercontent.com/jniltinho/66c64a33d8b0a515c95ea9750f8f69d5/raw/5318d664f213155c7e5a5c5f55e4ef2e078a082c/install_redmine.sh
chmod +x install_redmine.sh
./install_redmine.sh
```

➜ Para instalação no Servidor Debian limpo, continue lendo esse post pois abaixo você encontra essa resposta, para facilitar sua vida !!!


**Caso você não tenha um Servidor** [Debian 8.7 com ISPConfig](ispconfig3-no-debian) instalado você pode usar esse [outro script](https://gist.github.com/jniltinho/cb0743ed1ddc1544f644c223d1a0578e) que fiz para instalar o Redmine e o Servidor Web Nginx.
Lembrando que fiz a instalação com um Servidor limpo, sem nenhum software, apenas com wget e o ssh-server, se você não sabe como criar um Servidor básico, sugiro que você [assista esses vídeos](linux:servidores) que fiz para o [Canal Oficina do Tux](https://www.youtube.com/watch?v=17U1ZWRfGpE) no Youtube.


```bash
## Caso queira instalar o Redmine no Servidor Debian 8.7 64Bits limpo.
## Execute o Script e responda as perguntas.
cd /tmp/
wget https://gist.githubusercontent.com/jniltinho/cb0743ed1ddc1544f644c223d1a0578e/raw/1ccfaba34095920d939b1db2461c52bddbab8ef3/install_redmine_nginx.sh
chmod +x install_redmine_nginx.sh
./install_redmine_nginx.sh
```



## Links

  * https://github.com/teambox/teambox/wiki/Installing-on-Ubuntu-using-Apache-and-Unicorn
  * http://www.redmine.org/projects/redmine/wiki/HowTo_Install_Redmine_on_Debian_8_with_Apache2-Passenger
  * http://davidanguita.name/articles/setting-up-a-cheap-redmine-server-using-unicorn-and-apache/
  * http://www.redmine.org/projects/redmine/wiki/redmineinstall
  * https://github.com/gitlabhq/gitlab-recipes/blob/master/init/systemd/gitlab-unicorn.service
  * http://www.alexlinux.com/unicorn-systemd/


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}