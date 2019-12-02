---
title: UNIX - A Origem dos Sistemas
categories:
- OS
- Unix
- Linux
date: 2017-08-31 07:10:54
tags:
- os
- unix
- linux
---

![](/images/a-historia-do-unix.png)

## UNIX - A Origem dos Sistemas

Conheça a base de todos os sistemas operativos atuais, **Exceto o Windows**.
Trago a vocês um pouco da história por trás da história, um pouco das origens do UNIX e sua relação, influência e base de desenvolvimento do Linux, BSD, Solaris e outros.
<!-- more -->

## O que é o UNIX e sua relação para com o Linux?

É um sistema operacional, tal qual o Microsoft Windows ou o Apple macOS X, porém lançado em 1969 pela [AT&T](https://pt.wikipedia.org/wiki/AT%26T). (48 anos atrás).
Foi lançado sob o nome UNICS para o antigo computador PDP7; Em 1971 recebeu o nome de UNIX, cuja versão mais estável e popular foi o UNIX System V quem recebeu 4 versões, sendo o System V 4 a mais popular que serviu de base para vários sistemas cimentando os padrões atuais; De forma grossa e resumida, ele só rodava em computadores potentes (e muito caros), além de ser um software licenciado (como o Windows).

Em um tempo em que a informática engatinhava para os lares, ter um computador e um sistema como o UNIX era algo apenas do mundo dos sonhos. Dessa necessidade, desse ímpeto de ter em mãos o poderoso e bem elaborado sistema UNIX, surgiu um professor, [Andrew S. Tanenbaum](https://pt.wikipedia.org/wiki/Andrew_Stuart_Tanenbaum), quem desenvolveu um pequeno projeto chamado [MINIX](https://pt.wikipedia.org/wiki/MINIX), para ensino do UNIX nas escolas (porque como eu disse, o UNIX era caro, o [MINIX](https://pt.wikipedia.org/wiki/MINIX) seria a copia barata e simples do UNIX).

Mais tarde, um pequeno jovem estudante chamado [Linus Torvalds](https://pt.wikipedia.org/wiki/Linus_Torvalds), pegou como base o [MINIX](https://pt.wikipedia.org/wiki/MINIX) e começou a desenvolver o [LINUX](https://pt.wikipedia.org/wiki/Linux) em cima dele.
Pouco após isso, precisando de um sistema para funcionar, fez parceria com [Richard Stallman](https://pt.wikipedia.org/wiki/Richard_Matthew_Stallman), criador do sistema GNU, formando o GNU/Linux, base das distros atuais.
A primeira versão do Linux era bem simples, basicamente o kernel, os módulos (drivers) de hardware, o terminal shell e o compilador GCC (para converter programas de outras arquiteturas para seu hardware).

Basicamente o Linux nasceu da cópia da cópia com o essencial necessário para se auto-desenvolver. Assim como ocorreu nos tempos do UNIX de 1969, o proprio Linux possuia as ferramentas básicas para que seu desenvolvimento pudesse crescer consigo mesmo á medida que mais e mais usuários dedicados e interessados colaboravam com o projeto á pedido de Linus. Opostamente aos demais sistemas UNIX, o Linux almejava ser um sistema tão comunitário e livre tal qual Stallman pretendia com o GNU.

## O que é o BSD?

O Berkeley Software Distribution (BSD, como é conhecido), é um sistema operacional UNIX com desenvolvimento derivado e distribuído pelo Computer Systems Research Group (CSRG) da Universidade da Califórnia, em Berkeley, entre 1978 a 1995 Historicamente, o BSD ou Berkeley Unix foi considerado uma ramificação do UNIX, da AT&T, porque compartilhou a base de dados inicial e parte do projeto original.
Seu intento era ser um UNIX original livre de licenças para que pesquisadores e alunos pudessem desenvolver e aprender com ele na universidade.

## Quem é o Solaris?

Solaris é um Sistema Operacional UNIX desenvolvido pela antiga Sun Microsystems, hoje subsidiária da Oracle As primeiras versões do Solaris (baseadas no código do BSD) foram chamadas SunOS, tendo o seu nome alterado para Solaris 2 quando passou a ser baseado no UNIX System V.

Entre suas características, temos: (Solaris 10, em 2005)

{% blockquote %}
DTrace: análise e resolução de problemas de performance, em tempo real;
Solaris Containers: consolidação de aplicações em servidores de maior porte, através da criação de ambientes isolados e independentes;
Predictive Self-Healing: capacidade de antecipar-se à ocorrência de falhas que possam causar paradas críticas, isolando-as e recuperando-se;
Smarter Updating: atualizações automáticas e inteligentes através do Sun Update Connection;
Integrated Open Source Applications: disponibilidade de centenas de aplicações já integradas ao sistema;
ZFS: um novo tipo de sistema de arquivos que provê administração simplificada, semântica transacional, integridade de dados end-to-end e grande escalabilidadeHistória do Solaris
{% endblockquote %}

O sistema Solaris tem como grande foco servidores de grandes indústrias e empresas de grande porte, por isso sua impopularidade entre os usuários comuns.


## O que é o IBM AIX?

Advanced Interactive eXecutive, ou simplesmente AIX, é uma versão da IBM do sistema operacional Unix que é executado em computadores IBM de médio e grande porte Ele é um sistema comercial de código fonte fechado e se baseia no UNIX System V sendo muito utilizado em grandes corporações Antes do produto ser comercializado, o acrônimo AIX era uma abreviação de Advanced IBM UNIX ou, em português, Unix Avançado da IBM.
Hoje seu uso é constante nos meios científicos e militares e seu custo de licenciamento, além de arquitetura peculiar o torna pouco disponível ao publico comum; Arquitetura esta focada nos PowerPC da IBM, não é um sistema que executa em máquinas comuns com arquitetura AMD64 ou i386.

## Por que o BSD não fez sucesso como o Linux?

Graças a ideia de Linus de se basear no [MINIX](https://pt.wikipedia.org/wiki/MINIX), o Linux é apenas "parecido" com o UNIX, então não violou nenhum termo da AT&T Muita coisa foi imitada mas não haviam cópias descaradas de códigos O Linux estava livre para ser desenvolvido e utilizado sem restrições.

O BSD, porém, por ter até pedaços do código original UNIX sofreu duros processos judiciais da AT&T em 1992 congelando seu desenvolvimento por longos 2 anos e, enquanto resolvia seus imbróglios, o Linux crescia lentamente.

Sobre o caso do processo judicial aberto pela AT&T contra o BSD, segue a decisão judicial liberando o BSD do problema e permitindo a continuidade de seu desenvolvimento:

Citação: Foi alegado que foi copiado código e que houve roubo de segredos comerciais O código real infrator não foi identificado por quase dois anos O processo poderia ter se arrastado por muito mais tempo, mas é fato de que a Novell comprou a USL da AT&T e buscou uma solução No final, foram removidos três arquivos de 18000 que compunham a distribuição, e um número de mudanças menores foram feitas a outros arquivos Além disso, a Universidade concordou em adicionar direitos de autor da USL a setenta arquivos, com a estipulação de que estes continuem a ser redistribuídos livremente.

Quando finalmente pôde adentrar o mercado com certa paz em idos de 1994, o Linux ja estava recebendo mais apoio.
Mas de acordo com o próprio Linus Torvalds, se o 386BSD ou o GNU Hurd (kernel de Stallman) não estivessem disponíveis no momento, ele provavelmente não teria criado o Linux.

Obviamente que o projeto BSD hoje é tão grande como o Linux, ainda mais pelo agressivo desenvolvimento no aspecto segurança e usabilidade em data-centers mundiais Mas é só até este ponto que o BSD compete diretamente com o Linux, pois até mesmo no uso doméstico, obviamente, notamos a presença mais marcante do Linux Nichos tão distintos quanto a comparação Linux e Windows.

## Cadê o UNIX hoje?

A AT&T finalmente vendeu seus direitos do sistema UNIX para a Novell no início da década de 1990, que posteriormente revendeu para a Santa Cruz Operation (SCO) em 1995; mas a marca UNIX passou desde então para o consórcio de padrões da indústria The Open Group, que permite o uso da marca para sistemas operacionais certificados compatíveis com a Especificação Única UNIX (SUS) Entre estes sistemas temos o AIX da IBM, o Oracle Solaris e o macOS da Apple, que é basicamente o UNIX com a maior base instalada a partir de 2014.

O UNIX não deixou de existir, foi basicamente apenas ramificado em outros sistemas certificados atuais, que respeitam suas normas POSIX e regras que comprovam serem sistemas UNIX legítimos, tal qual o original.

Quer conhecer o UNIX? Teste alguma versão do BSD (Como o GhostBSD por este ser mais amigável) ou mesmo o OpenSolaris da Oracle São tão UNIX quanto o System V antigo e tao qual o Apple macOS é hoje.
No caso do BSD, não é certificado mas é bem próximo, muito mais que o Linux (e se você for atento, vai notar as diferenças gritantes entre um sistema UNIX e um baseado em UNIX).

## Falando da Apple

A Apple, quando criou o Mac OS X, utilizou como base o XNU ("X is Not Unix" mas possui Certificação UNIX) evoluído do NexStep (parecido com UNIX tambem xD) Seu kernel écuriosamente híbrido, conhecido como Darwin cujo interior é composto por 2 micro-kerneis: partes do BSD e de um outro chamado Mach, que operam juntos. macOS X não é e nem roda programas do BSD, apesar de ser parecido e ter alguns trechos do código BSD inclusive em seu kernel. A compatibilidade de programas do macOS no FreeBSD só é possivel saciando dependências, reimplementando conteúdo do Darwin e do Mach além de rodar API's como o METAL (O "DirectX" da Apple). Não é o trabalho dos mais simples.... mas não é impossível.

## A Microsoft realmente não tem nada nessa história?

Bom, o sucesso do UNIX era tanto que até a Microsoft entrou na brincadeira e lançou o XENIX em 1980, desenvolvido sob o UNIX da AT&T.
O XENIX foi um dos UNIX mais bem sucedidos da historia, se tomarmos como base a quantidade de computadores que eram vendidos com ele pré instalado. (remete á forma como a Microsoft distribui o Windows hoje, hardware casado com o software.)

## Certificação UNIX

Como falei anteriormente, sistemas UNIX legítimos possuem certificação UNIX. Essa Certificação é fornecida pela OpenGroup.org e sua relação de sistemas certificados pode ser vista em: https://www.opengroup.org/openbrand/register

## Considerações Finais

Por mais abertos que sistemas UNIX possam ser, a maioria dos bons sistemas de alto nível são licenciados e pagos.
Alguns sistemas até são "gratuitos" mas exigem que você adquira um hardware especifico para tal, como é o caso do HP-UX, o UNIX da Hewlett Packard, ou mesmo o AIX da IBM.
Temos casos como o macOS, certificado UNIX porém parcialmente aberto, com diversos trechos do código fonte fechados.
No caso do BSD que hoje não possui certificação nem softwares UNIX originais, ele ainda possui trechos do código UNIX sendo mais próximo, parecido com o UNIX do que o Linux.



## Fontes históricas:

  * Sobre o UNIX: Livro "Descobrindo o Linux" 3ª Edição
  * Sobre o BSD, Solaris e AIX: Wikipedia - UNIX, BSD
  * Sobre o macOS: Vilson Heuer, pela sua intimidade com o código fonte da Apple e ser parte importante do desenvolvimento do PigmeoOS, futuro sistema Linux que vai rodar programas do macOS.

{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}