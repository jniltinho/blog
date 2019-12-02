+++
title = "ISPConfig no Debian"
description = "Instalação do ISPConfig3 3.1.1 no Debian 8.6"
date=2017-04-06T10:54:00Z
draft = false
slug = "ispconfig-no-debian"

[taxonomies]
categories = ["Howtos"]
tags = ["isp", "www", "web", "painel", "linux", "debian"]

[extra]
author = "jniltinho"
comments = true
+++

[![](/images/ispconfig3_no_debian.jpg)](https://www.youtube.com/watch?v=sS-YsBrL2Z8)

No [video](https://www.youtube.com/watch?v=sS-YsBrL2Z8) dessa semana, mostro a instalação do ISPConfig3 3.1.1 no Debian 8.6 64Bits, o grande diferencial dessa nova versão do ISPConfig é o suporte para [HHVM](instalando-hhvm-no-ubuntu).
Caso você não saiba como criar um Servidor para um ambiente de Hospedagem, assista os vídeos da [Série Servidores Linux](https://www.youtube.com/playlist?list=PLYSrVFfLxqmKHf9ENdN6Hh6bv9bLPnjW9) que fiz para o Canal [Oficina do Tux](https://goo.gl/3xQopO).
<!-- more -->

Siga etapa por etapa do [script](https://gist.github.com/jniltinho/ff9bef16fbf8dc8ced3b34313d58e1ab) de instalação que está no Gist, antes de começar a instalar veja com calma o vídeo que está postado no Canal [Oficina do Tux](https://goo.gl/3xQopO), abaixo está todos os links usado no video de instalação.

Essa instalação estou usando o Apache2, em breve vou criar um [script](https://gist.github.com/jniltinho/dcacbfbccf6822795e6b) de instalação do ISPConfig3 usando o Nginx no lugar do Apache2, mas vai ser para o Ubuntu 16.04 64Bits.

{{ youtube(id="sS-YsBrL2Z8") }}

## Links

* [Perfect Server Debian](https://www.howtoforge.com/tutorial/perfect-server-debian-8-4-jessie-apache-bind-dovecot-ispconfig-3-1/)
* [Site ISPConfig](http://www.ispconfig.org/)
* [Blog ISPConfig](http://www.ispconfig.org/blog/)
* [Doc ISPConfig](http://www.ispconfig.org/documentation/)
* [Site HHVM](http://hhvm.com/)
* [Doc HHVM](https://docs.hhvm.com/hhvm/installation/introduction)
* [Sobre o HHVM](https://pt.wikipedia.org/wiki/HipHop_Virtual_Machine)
* [Site HackLang](http://hacklang.org/)
* [Tutorial HackLang](http://hacklang.org/tutorial.html)

{% quote(author="Nilton") %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% end %}