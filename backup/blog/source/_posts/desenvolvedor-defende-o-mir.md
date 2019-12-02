
---
title: Desenvolvedor defende o Mir
categories:
- Linux
- Ubuntu
- Mir
date: 2017-04-12 09:30:00
tags:
- linux
- ubuntu
- mir
- noticia
---

![](/images/why_mir.png)

## Desenvolvedor defende o Mir **"Why Mir"**

O desenvolvedor canônico [Alan Griffiths](https://uk.linkedin.com/in/alangriffiths) vem blogando muito nos últimos dias sobre o servidor Mir. Ele tem tentado fazer com que a comunidade apoie o Mir e até potencialmente adicione o suporte ao cliente nativo de Wayland. Seu último post é intitulado **"Why Mir"** com muitos ainda se perguntando por que eles devem se preocupar com Mir quando [Wayland](/2017/04/wayland-sera-o-novo-x/) provou ser o caminho testado e amplamente adotado.
<!-- more -->

Griffiths fala sobre as abstrações de Mir, o suporte de Mir para os gráficos de Mesa KMS/X11 e Android HWC (embora eles também sejam todos capazes com Wayland), "além da prova de conceito" o suporte para Vulkan mesmo que não seja público ainda e Wayland apoia o Vulkan, E o Mir como um servidor de exibição fornece "padrões válidos".

{% blockquote %}
Porque o trabalho foi financiado por recursos Canonical que foram importantes para o Ubuntu Phone e Unity8 desktop têm progredido mais rápido e são mais completos do que outros.

Quando o Mir foi iniciado precisávamos de um mecanismo de comunicação cliente-servidor (e Wayland não estava no estado em que está hoje). Fizemos algo que funcionou bem o suficiente (libmirclient) e, porque é apenas uma parte pequena, intencionalmente isolada do todo, poderíamos mudar mais tarde. Nunca imaginamos que "grande coisa" essa decisão se tornaria.
{% endblockquote %}

Aqueles que querem ler mais podem acesse o post [Why Mir](http://voices.canonical.com/alan.griffiths/2017/04/12/why-mir/). Mas em extensivamente monitorando a paisagem de gráficos de Linux, sobre o único ponto de venda eu vejo é seus padrões sensíveis em se tornar mais fácil para os desenvolvedores para levantar novos shells para ir ao Mir rapidamente, mas já vimos que trazendo os compositores dew Wayland pode ser amplamente feito, mais trabalho foi feito (e ainda em curso) diferente do ambiente do Wayland de permitir mais compartilhamento de código. Um dos grandes problemas, entretanto, para o Mir é que o suporte ao driver XMir e Mesa não é mainline e, portanto, não está prontamente disponível fora dos pacotes do Ubuntu.


## Links

  * http://www.phoronix.com/scan.php?page=news_item&px=Mir-Why-Mir
  * http://voices.canonical.com/alan.griffiths/2017/04/12/why-mir/


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}