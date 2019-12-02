---
title: A Historia do Projeto ISPConfig
categories:
- Linux
- Ubuntu
- Debian
- Lamp
- Cursos
date: 2017-01-05 18:05:03
tags:
- howto
- linux
- ubuntu
- debian
- cursos
- lamp
---

[![](/images/ispconfig_dashboard.png)](http://materiais.escolalinux.com.br/lp-webinar-postfix)

[ISPConfig](http://www.ispconfig.org/) é um painel de controle de hospedagem Opensource para Linux, que é capaz de gerenciar vários servidores a partir de um painel de controle. Ele é licenciado sob a licença BSD.
ISPConfig é similar ao CPanel, mas não tem custo algum para que está usando, ele faz gestão de DNS, E-mail, Sites, FTP e Bases de Dados.
<!-- more -->

Você pode gerenciar todos esses serviços via interface web, o que torna simples a gestão de um ambiente Linux mesmo sem conhecer um ambiente de DNS, Sites e E-mail.
A primeira versão (2.0.4) do ISPConfig foi lançada em 13 de Julho de 2005, o projeto tem quase 12 anos de desenvolvimento, a ultima versão estável é 3.1.2 lançada em [25 de Janeiro de 2017](https://www.ispconfig.org/blog/ispconfig-3-1-2-released/).

Ele vem sendo desenvolvido por esses desenvolvedores feras em Linux: projektfarm Gmbh, Till Brehm, Falko Timme e outros ao redor do mundo.
Eles vivem na Alemanha, eu sempre reporto Bugs para o projeto, para que o ISPConfig funcione 100% no OpenSUSE, conversei muito com o Falko Timme seu [Twitter](https://twitter.com/falko) é @falko.
O ISP é desenvolvido em PHP e usa uma base de dados Mysql para guardar as informações e alguns scripts de bash para fazer as coisas acontecerem no backend.

O software precisa de um Servidor HTTP (apache2 ou nginx) para funcionar, sempre questionei o projeto por isso, porque não usar uma linguagem que tenha embutido seu próprio Servidor HTTP, como Golang, Python ou Ruby, mas isso e outra história.
Hoje o ISPConfig é um software muito maduro e estável, ele esta disponível para as principais distribuições Linux: Debian, Ubuntu, CentOS, OpenSUSE, mas eles recomendam Debian ou Ubuntu.

Eu utilizo o projeto desde de 2007 na sua versão 2.X, hoje ele está na versão 3.1.2 e continua com mais funções, já esta 100% traduzido para o Português do Brasil o que facilita e muito na administração do ambiente, principalmente para delegar essa administração para outras pessoas.
Fora que você não ira pagar nada para utilizar o ISPConfig.

Recentemente criei o curso online de [Postfix com ISPConfig3](http://materiais.escolalinux.com.br/lp-webinar-postfix) na [Escola Linux](https://www.escolalinux.com.br) de treinamentos, que usei o ISPConfig3 para ajudar na gestão e deploy desse ambiente de e-mail, **esse mês está com um desconto bem bacana**, da uma olhada lá.


[![](/images/2016-11-10-150656_1192x1048_scrot.png)](http://materiais.escolalinux.com.br/lp-webinar-postfix)



E como não é pouco já estou elaborando outro curso online de **Administração de Servidor de Hospedagem de sites**, mas agora vou postar o curso no [EAD do Diolinux](http://ead.diolinux.com.br/), nesse curso vou usar o ISPConfig3 na sua ultima versão que agora tem o tão esperado suporte para o [HHVM](instalando-hhvm-no-ubuntu) instalado no Ubuntu 16.04 64Bits.

Mas você não precisa ficar triste :-( caso não tenha recurso nesse momento para pagar o curso, fiz alguns vídeos sobre o ISPConfig3 no Canal [Oficina do Tux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ) e no Canal [LinuxPro](https://goo.gl/F6DhnN) no [Youtube](https://www.youtube.com) e aqui nesse Blog e no [Gist](https://gist.github.com/jniltinho) tem muitas coisas sobre o ISPConfig3, como scripts de instalação, dicas e outras coisas.

[![](/images/ead_diolinux.png)](https://www.youtube.com/watch?v=87kz2pyU3Bo)


Mas nada como fazer o curso, principalmente o curso de [Servidor de E-mail com Postfix](http://materiais.escolalinux.com.br/lp-webinar-postfix), **já que esse mês está com um desconto bem bacana**, da uma olhada lá.

Abaixo está uma foto de todos os serviços que o ISPConfig3 administra no Servidor Linux, aguardem, em breve mais cursos irão  chegar sobre toda a infraestrutura por trás do projeto ISPConfig.

[![](/images/2016-11-10-155329_1192x1048_scrot.png)](http://www.ispconfig.org/)




## Links
  * http://www.ispconfig.org/
  * http://sourceforge.net/projects/ispconfig/
  * http://www.ispconfig.org/development/
  * http://git.ispconfig.org/ispconfig/ispconfig3/issues
  * https://gist.github.com/jniltinho/4b50de4a24a162add15f
  * http://docs.ispconfig.org/about/


