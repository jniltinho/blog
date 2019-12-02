---
title: Wayland será o novo X.org ?
categories:
- Linux
- Wayland
- X.org
date: 2017-04-07 22:05:03
tags:
- linux
- wayland
- x.org
- x
---


![](/images/wayland_logo.png)

## ➜ Sobre o Wayland

Wayland é concebido como uma substituição mais simples para o Servidor X.org, mais fácil de desenvolver e manter. Espera-se que o GNOME e o KDE sejam portados para ele.

Wayland é um protocolo para um compositor conversar com seus clientes, bem como uma implementação da biblioteca C desse protocolo. O compositor pode ser um servidor de exibição autônomo rodando em modos de kernel Linux e dispositivos de entrada evdev, um aplicativo X ou um próprio cliente wayland. Os clientes podem ser aplicativos tradicionais, servidores X (rootless ou fullscreen) ou outros servidores de vídeo.
<!-- more -->

Parte do projeto Wayland é também a implementação de referência Weston de um compositor Wayland. O Weston pode ser executado como um cliente X ou sob Linux KMS e vem com alguns clientes demo. O compositor Weston é um compositor mínimo e rápido e é adequado para muitos casos de uso incorporado e móvel.

## Olhando para o futuro dos protocolos de Display Servers

O especialista em display servers, Daniel Stone, explica o que realmente está acontecendo com o futuro dos protocolos gráficos de exibição no Linux.

No que diz respeito à maioria dos usuários de Linux, Wayland é o projeto que eventualmente substituirá o X Window System (X). Razão pela qual Daniel Stone, um desenvolvedor de longa data de display servers, fez uma palestra em linux.conf.au em 2013 chamada "The Real Story Behind Wayland e X (ou 'Por que tudo o que você leu em LWN e comentários de Phoronix é falso')."

Stone deve saber, se alguém o fizer. Ele começou seu envolvimento com o software livre em 2001 como mantenedor de pacotes Debian para o KDE e Apache 2. Alguns anos mais tarde, trabalhando no Trinity College na Universidade de Melbourne, ele foi convidado a empacotar uma nova versão do X11, uma versão do X11 que É agora em grande parte suplantado por X.Org. Essa atribuição levou-o a manter X para Ubuntu e mais tarde para a solução de problemas de sistemas de exibição para dispositivos móveis e incorporados para Nokia e Collabora, bem como seu envolvimento com X.Org, a versão atual do X usada pela maioria das distribuições.

Hoje, ele é um dos principais desenvolvedores para Wayland, um projeto com cerca de 25 desenvolvedores ativos e apoiado em grande parte pela  Intel e Stone’s employer, Collabora.

Ao longo da última década, ele descreve-se como tendo "gradualmente se graduado de trabalhar no sistema de empacotamento e construção - incluindo a criação da primeira construção modular do servidor X.Org - para trabalhar no servidor central." A trajetória lhe dá uma clara Visão geral de exatamente o que tem acontecido com os servidores de exibição nos últimos anos.

## Por que não ficar com o X.org ?
![](/images/mesa-wayland-arch.png)

Uma página no wiki de X.Org criada por Adam Jackson chamando X12. "Não foi uma tentativa séria de um projeto", Stone enfatiza, "mas uma lista de coisas que faria diferente se tivéssemos a chance de retrabalhar o protocolo central."

Para muitos desenvolvedores, essa lista ajudou a codificar os problemas com o X11. "Algumas dessas questões eram apenas problemas de saída com o protocolo central", diz Stone, "mas muitos deles estavam relacionados ao fato de que, nos 26 anos desde que o X11 foi criado, tudo ao redor mudou, Tanto o hardware como as aplicações. "É verdade que o X é extensível, mas com o servidor médio X executando uma média de 23 de 27 extensões, muitos desenvolvedores X sentem que" nós chutamos isso pode tão longe na estrada quanto pudermos."

Para piorar as coisas, a política do X.org é nunca quebrar a compatibilidade com versões anteriores, hoje, o X inclui quatro modelos de entrada separados "refletindo a evolução do teclado e mouse de três botões para full multi-touch", quatro modelos de exibição e dois modelos de rendering - nenhum dos quais tem prioridade sobre os outros, mesmo que alguns sejam obsoletos.

Conseqüentemente, o esforço para manter X11 em execução está passando o ponto de retornos decrescentes. Embora os últimos anos tenham visto inúmeras melhorias, a maioria das melhorias fáceis já foram implementadas. Normalmente, hoje em dia, "resolver até mesmo o mais ínfimo dos problemas, se ele fosse realmente solúvel, envolveria um esforço massivamente desproporcional - o que, por si só, criaria problemas no futuro", diz Stone.

Ainda assim, os esforços dos últimos anos deram a X uma vida prolongada, enquanto o trabalho em extensões X11 se tornou uma inspiração geral para Wayland. A inspiração específica veio do fundador Kristian H & oslash, o trabalho de gsberg na extensão de renderização direta DRI2).

Em suma, "Wayland não seria possível sem os últimos anos de desenvolvimento do X.org", diz Stone. Limpar as extensões deu aos desenvolvedores uma percepção mais clara de como um servidor de display ideal deve funcionar.

## Como Wayland é diferente do X.org ?
![](/images/wayland-arch.png)

A vantagem principal de Wayland sobre X.org é que partindo do zero. Uma das principais razões para a complexidade do X é que, ao longo dos anos, seu papel mudou. Como Stone diz: "Originalmente, o servidor X.org tomaria um fluxo de comandos de renderização (retângulo aqui, imagem aqui, texto lá) e faria toda a rasterização. À medida que nossas interfaces de usuário (e, notavelmente, fontes) ficaram mais complexas, eventualmente os gerentes de janelas renderizaram tudo por conta própria e apenas colocaram grandes buffers de tamanho de janela para os clientes."

Como resultado, hoje, X11 age em grande parte como "um terrível" protocolo de comunicação entre o cliente e o gerenciador de janelas. Esse papel mudado funciona, mas pode ser complicado e freqüentemente resulta "em falhas visuais, como o velho vibrar (shaking) redimensiona ou pisca uma janela cinza e branca antes que ela se enche". Embora essas falhas possam ser corrigidas, Os remendos complicam ainda mais a estrutura e a manutenção necessária.

Como o X11 moderno, Wayland é um protocolo de exibição, exigindo um compositor para receber instruções (no caso de Wayland, o único compositor agora é Weston, embora isso mude com a adoção). A diferença é que Wayland é uma tentativa de recriar o objetivo moderno do X11 a partir do zero, reorganizá-lo e se concentrar em computadores modernos para reduzir a complexidade desnecessária.

Outra diferença importante é que, enquanto X11 cegamente executa comandos do cliente, Wayland tenta melhorar o desempenho codificando reações apropriadas para situações de renderização mais comuns.

"Provavelmente o melhor exemplo é uma janela pop-up", diz Stone. "No X11, isso é implementado dizendo ao servidor para colocar uma janela em um local muito específico, e para dar ao seu cliente todo o teclado e mouse entrada de toda a exibição para que ele possa fechar a janela quando você clica fora dela. E uma vez que não temos nenhuma maneira de quebrar esses grabs de entrada, suas chaves de mídia não funcionam e o protetor de tela não pode ser iniciado."

Por outro lado, Wayland inclui instruções específicas sobre o que fazer com uma classe de janela pop-up, "e o compositior é esperado para fechar a janela pop-up quando você clica fora dela. Se o compositor quiser acionar o protetor de tela, ele fará isso e fechará a janela pop-up. Ter esse contexto é imensamente, extremamente valioso."

Naturalmente, tais instruções não podem antecipar o comportamento correto para cada situação. Por exemplo, em telas sensíveis ao toque, várias áreas da tela podem ser tocados ao mesmo tempo, e qual área - se houver - deve ser dada prioridade é impossível antecipar. Temporariamente, pelo menos, Stone diz, "nós apenas fizemos o nosso melhor para projetar essas questões fora do protocolo, e vamos ver o que cai de várias implementações tentando fazer o melhor dele."

A linha inferior? Sendo construído a partir do zero, Wayland é menos de um patchwork e, portanto, menos propensos a sofrer de interações imprevistas. Além disso, em contextos básicos, Wayland oferece instruções específicas que o fazem reagir mais inteligentemente em muitas situações de rotina.

## Quando o Wayland estará pronto para uso ?

Embora a maioria das pessoas tenha se estabelecido em pensar em Wayland como um trabalho em andamento, o projeto já foi embarcado em uma série de produtos embarcados, telefones e tablets. "Para esses produtos, onde você controla toda a pilha de cima para baixo, é muito fácil usar o protocolo principal do Wayland e construir sua própria interface de usuário específica por cima com extensões personalizadas."

No entanto, "para um uso mais genérico de desktop, ainda há algumas lacunas que só serão realmente resolvidas quando conseguirmos ports viáveis ​​dos principais ambientes de desktop". Segundo Stone, "vários desenvolvedores do GNOME estão trabalhando muito duro para conseguir um port completo do GNOME rodando no Wayland ainda este ano", KDE e Enlightenment também estão trabalhando em apoiar o Wayland. "Eu não vou colocar uma data por escrito", diz ele, "mas, eu acho que vai ser um ano muito bom para o Wayland."

Independentemente de como Wayland seja recebido no futuro próximo, Stone observa que nos últimos anos, "os drivers de configuração do kernel estão nos proporcionando enormes benefícios e grande estabilidade, agora estamos vendo muito mais suporte de uma base de fornecedores muito mais ampla e o Mesa não é apenas extremamente estável, mas começa a competir em recursos. Espero não ter sonhado de ter uma base como esta para trabalhar anteriormente". No que diz respeito a Stone, o trabalho no X11 que inspirou Wayland e o Wayland já ajudou a melhorar as exibições gráficas, mesmo que ainda haja mais trabalho a ser feito.


## Links
  * http://www.linux-magazine.com/Online/Features/Is-Wayland-the-New-X
  * https://wayland.freedesktop.org/
  * [Introdução ao Wayland](https://elias.praciano.com/2016/11/introducao-ao-wayland-a-nova-geracao-de-servidor-grafico/)
  * https://www.enlightenment.org/about-wayland
  * http://www.linux-magazine.com/Online/News/New-Nvidia-Driver-Offers-Wayland-Support


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}