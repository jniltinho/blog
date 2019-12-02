---
title: Migrando o Site do Oficina do Tux
categories:
- Linux
- Hospedagem
date: 2017-04-07 12:05:03
tags:
- linux
- servidores
- hospedagem
- lamp
---

[![](/images/banner_odt.jpg)](http://www.oficinadotux.com.br)

Nesse [video](https://www.youtube.com/watch?v=p_HyGJZABOw) mostro como faço a [migração do Oficina do Tux](https://www.youtube.com/watch?v=p_HyGJZABOw) para outro Servidor com ISPConfig 3.1.1 que agora tem suporte para HHVM.
No dia [25 de Outubro de 2016](http://www.ispconfig.org/blog/ispconfig-3-1-1-released/) o projeto [ISPConfig3](http://www.ispconfig.org) lançou a sua versão 3.1.1 que agora tem a opção de suporte para a maquina virtual do [Facebook](https://github.com/facebook/) [HHVM](http://hhvm.com/) que executa scripts PHP.
Com essa mudança qualquer projeto web feito com a linguagem PHP, roda muito mais rápido e ainda usa menos recurso do Servidor.
Então hoje o Site www.oficinadotux.com.br roda muito rápido graças ao HHVM que esta sendo desenvolvido pelo Facebook.
<!-- more -->

![](/images/migrando_o_oficina_do_tux.png)


Como comentei no [video](https://www.youtube.com/watch?v=p_HyGJZABOw) uso esse [script](https://gist.github.com/jniltinho/5565364) de backup do Mysql ou MariaDB feito em Python, ele roda toda noite e faz o backup de todas as bases, eu uso no Cron para executar todo dia de madrugada e ele ainda tem a opção de enviar e-mail com o log do que aconteceu.
Esse [script](https://gist.github.com/jniltinho/5565364) foi eu mesmo que fiz, com base em um script antigo que tinha em Perl, para quem não sabe eu desenvolvo em Perl, Python, PHP, Bash e Golang.

## Sobre o HHVM
HHVM is an open-source virtual machine designed for executing programs written in Hack and PHP. HHVM uses a just-in-time (JIT) compilation approach to achieve superior performance while maintaining the development flexibility that PHP provides.

HHVM supports Hack, PHP 5 and the major features of PHP 7. We are aware of minor incompatibilities, so please open issues when you find them. HHVM also supports many extensions as well.

Caso você queira testar o HHVM no seu Desktop Ubuntu 16.04 ou 14.04 veja esse [tutorial](/2017/04/instalando-hhvm-no-ubuntu/) aqui no [blog](/).

{% youtube p_HyGJZABOw %}

{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}