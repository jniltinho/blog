---
title: Novo Sistema de Arquivos da Apple
categories:
- Apple
- Mac
- APFS
date: 2017-04-18 22:15:03
tags:
- mac
- news
- apfs
---

![](/images/apfs.png)


## O novo sistema de arquivos da Apple (APFS)

Quem na Terra considera o [sistema de arquivos](http://www.hardware.com.br/termos/sistema-de-arquivos) de um computador como algo mais que um trabalhador de escritório sem graça? Mas se cavarmos um pouco mais fundo, há uma história a ser contada, uma que diz respeito ao futuro do amplo conjunto de versões de sistemas operacionais e dispositivos de hardware da Apple.

Enquanto o sistema de arquivos é um órgão mais vital do computador, para o consumidor normal é um furo, e até mesmo de críticos conhecedores raramente o elogia. Mas não vamos ignorar o importante, O que há e quem: Qual é o trabalho a ser feito (JTBD), e para quem?
<!-- more -->

Hoje, vamos considerar três distritos que se entrelaçaram interesses no novo sistema de arquivos APFS da Apple, recentemente implantado em todos os iOS, Watch e dispositivos de TV:

{% blockquote %}
**Usuários -- a.k.a clientes pagantes, a única fonte real de dinheiro**
**Desenvolvedores de aplicativos que ampliam o apelo dos dispositivos Apple**
**A própria Apple**
{% endblockquote %}

Para os usuários, a história da JTBD parece ser simples: eu quero armazenar, catalogar e recuperar meus arquivos, sejam eles documentos de trabalho, fotos de viagem, e-books, formulários fiscais ... Um subconjunto de usuários mais sofisticados entenderão e apreciarão o impacto Da atomização de APFS, resolução de dados de nanosegundos e criptografia de nível de arquivo multi-chave, mas mencione esses recursos para um usuário normal e você desenhará um olhar vazio.

Simplificando, o resto de nós não se importa ... exceto que nós fazemos; Simplesmente não sabemos. APFS 'esotérico soar novos recursos significa que a criptografia será mais fácil de usar, o espaço em disco será melhor utilizado, os backups serão mais confiáveis, para citar apenas algumas melhorias. No geral, o iPhone eo iPad (e Apple Watch e Apple TV) tornaram-se "à prova de futuro" agora que eles derramaram o HFS + de 30 anos. Você provavelmente nem sabia que isso aconteceu. Isso é grande elogio para um transplante de órgão vital.

 Como uma anedota pessoal, eu não prestei atenção quando o MacBook Air do meu cônjuge repetidamente não conseguiu fazer backup na Cápsula do Aeroporto Time Capsule. Eu confiava no MacBook Air, nunca tivemos problemas com nenhum de nossos laptops Mac e pensei que poderia me dar a volta para caçar o bug do Time Capsule mais tarde. Quando eu finalmente fiz, descobri que não havia nada de errado com nosso dispositivo de backup. O problema era com arquivos corrompidos no Solid State Drive (SSD) do laptop. Eles estavam tão danificados que a Apple Disk Utility se recusou a reparar o SSD. Várias tentativas de encontrar uma solução me aterraram nos braços de um cloner de disco chamado Super Duper. Eu usá-lo religiosamente antes de viagens assim que nós carregamos em torno de cópias bootable de nossas movimentações. Dessa forma, em uma emergência, eu poderia pedir a alguém para me deixar arrancar a unidade de backup em seu Mac e função sem perturbar o seu sistema. Faça logoff, ejetar a unidade de backup eo sistema host está de volta ao normal, intocado.

Enquanto eu tentava fazer backup do SSD doente, o cloner do disco recusou e parou, sempre no mesmo lugar. Mais picar em torno de arquivos de imagem corrompidos detectados. Então, eu passei as próximas 48 horas caçando e apagando arquivos ruins, tentando operações de clonagem e voltando à caça até que todos os culpados fossem desaparecidos. (Pode ter havido maneiras mais inteligentes para curar o problema.) Sinta-se livre para se divertir com essa despesa de klutz.)

Essa degradação do SSD é conhecida como Bit Rot, algo que um sistema de arquivos mais moderno, como o APFS, pode ter detectado com uma mensagem de erro claramente rotulada, se não for corrigido automaticamente. É o que os sistemas de arquivos modernos, como Btrfs e ZFS, devem fazer - mas não são amplamente implantados em PCs e outros dispositivos de consumo.

Para os desenvolvedores, as coisas não são tão transparentes. A Apple lançou um novo conjunto de Interfaces de Programação de Aplicativos (API), especificações que permitem que desenvolvedores de aplicativos de terceiros aproveitem os novos recursos do sistema de arquivos. Este é principalmente, mas não inteiramente boa notícia. Novas estruturas de aplicativos vêm com novos bugs no código e erros na documentação, mas os benefícios técnicos - melhor integridade da transação de arquivos, gerenciamento de armazenamento mais flexível, criptografia nativa (em oposição ao Vault de arquivo aparafusado) - não são apenas atrativos , Eles são obrigatórios. Como a documentação do desenvolvedor da Apple explica em inglês sucinto e simples, a idade não se torna um sistema de arquivos [como sempre, edita e enfatiza o meu]:


{% blockquote %}
**HFS + e seu antecessor HFS têm mais de 30 anos. Esses sistemas de arquivos foram desenvolvidos em uma era de disquetes e discos rígidos, quando os tamanhos dos arquivos eram calculados em kilobytes ou megabytes.**
**Hoje, as pessoas geralmente armazenam centenas de gigabytes e acessam milhões de arquivos em drives flash de alta velocidade e baixa latência. As pessoas carregam seus dados com eles e exigem que as informações sensíveis sejam seguras.**
{% endblockquote %}

(Veja também a avaliação eminentemente legível de Backblaze dos detalhes técnicos da APFS.)

**Os veteranos recordam o sistema de arquivos pré-Mac chamado The Flounder:**

![](https://cdn-images-1.medium.com/max/800/1*Ps2CCICv9qHMBhdpvBjEdQ.png)

(Lembro-me de uma versão ainda mais crua que mostrava os arquivos sendo lançados em torno da superfície de um disquete circular, mas não pode encontrá-lo na Net. Ajuda?)

**Isso deu lugar em 1984 ao Mac Finder:**

![](https://cdn-images-1.medium.com/max/800/1*-6_DNx67bpDzmcOOiZwshQ.png)

**Aplicativos e arquivos estavam lá, sem hierarquia, sem pastas.**
O Sistema de Arquivo Hierárquico (HFS) foi rapidamente introduzido em 1985 e iniciou sua longa marcha rumo ao que sabemos hoje. Como você pode imaginar, o HFS antigo contém camadas sobre camadas de remendos, extensões e cola seca. (Um dos arquitetos da APFS, Dominic Giampaolo, já havia projetado e construído o sistema de arquivos BeOS usando, como um de seus guias, seu conhecimento das deficiências do HFS.)

De notar, a empresa projetou APFS para suportar o iOS, onde o sistema de arquivos ainda está largamente fora do alcance dos usuários. Arquivos e pastas estão disponíveis no iCloud Drive em um iPhone ou iPad, mas não podemos criar pastas lá, eles têm que ser criados em um Mac ou podemos adicionar arquivos a categorias de sistema fixo:

![](https://cdn-images-1.medium.com/max/800/1*pYZ0grw4pM9UnF2O1TAsMg.png)

Em outras palavras, ainda não há um iOS equivalente ao Finder do Mac, nossa interface do macOS para o sistema de arquivos. Por "nosso" eu quero dizer a maioria de nós. Savvy Usuários de Mac sabem como manejar uma janela do Terminal onde podem manipular tudo no sistema de arquivos - ou até mesmo destruir tudo no disco:

![](https://cdn-images-1.medium.com/max/800/1*G_W4e9IO3259AVixRL9Avw.png)

Para a Apple, o APFS é uma oportunidade para se tornar jovem novamente, sem perder as memórias e os artefatos de um passado complicado. Os sistemas fechados da Apple, tão frequentemente criticados, tornam a transição mais fácil, mais segura. Haverá bugs, mas com este novo começo em um sistema fechado, eles serão muito mais fáceis de identificar e corrigir, ao invés de lidar com as variações de hardware "criativas" decididas no escritório de compras de algum licenciado do sistema operacional remoto. (Um diretor da maior empresa de licenciamento de sistemas operacionais do PC, uma vez me disse que gastou mais dinheiro no desenvolvimento e correções do driver do que no código do sistema operacional apropriado).

Vai ser interessante ver o que acontece quando APFS chega ao macOS e sua carga complicada de pecados passados. Entretanto, o lançamento do "iOS First" fala mais uma vez das prioridades da Apple, da sua visão do seu futuro. Quanto à discussão "interessante" da semana passada sobre os futuros Mac Pros e iMacs, esperarei que os números trimestrais da Apple sejam lançados em três semanas, no dia 2 de maio.

## Links

  
  * http://www.uniriotec.br/~morganna/guia/sistemas_de_arquivos.html
  * https://pt.wikipedia.org/wiki/Sistema_de_ficheiros
  * http://www.hardware.com.br/termos/sistema-de-arquivos
  * http://softwarelivre.org/download/blog/o-que-sao-filesystems
  * https://mondaynote.com/apples-new-file-system-who-cares-3ba440cd4d84



{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}