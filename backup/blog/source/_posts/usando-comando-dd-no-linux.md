---
title: Usando o Comando DD
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

![](/images/comando_dd.png)

Antes de mais nada, quero dizer que o comando **DD**, já me salvou diversas vezes, ele é muito simples e muito eficiente, é interessante você aprender mais como ele funciona e se você esta pensando em tirar sua certificação [LPI](https://www.youtube.com/watch?v=-brUujxDuR4) esse comando cai em prova viu.
Então fique atento e leia esse texto com calma e ele ainda não esta completo, então passe nesse blog daqui uns dias que vai ter mais conteúdo nesse post.

**__Lembrando que o comando DD cai em Prova de LPI (Linux Professional Institute).__**
<!-- more -->



## Sobre o "Data Definition"

O **DD** é um utilitário de linha de comando para sistemas operacionais Unix e Unix, cujo principal objetivo é converter e copiar arquivos.

No Unix, os drivers de dispositivo para hardware (como unidades de disco rígido) e arquivos de dispositivo especiais (como **/dev/zero** e **/dev/random**) aparecem no sistema de arquivos como arquivos normais; **DD** também pode ler e/ou escrever de/para esses arquivos, desde que a função é implementada em seu respectivo driver.

Como resultado, dd pode ser usado para tarefas como fazer backup do setor de inicialização de um disco rígido e obter uma quantidade fixa de dados aleatórios.
O programa **DD** também pode realizar conversões nos dados à medida que são copiados, incluindo troca de ordem de bytes e conversão de e para as codificações de texto ASCII e EBCDIC.


O nome dd é uma alusão à instrução **DD** encontrada na Linguagem de Controle de Trabalho da IBM (JCL), na qual as iniciais representam **Definição de Dados**. A sintaxe do comando se assemelha mais à instrução JCL do que a outros comandos Unix, então a sintaxe pode ter sido uma piada.

Originalmente destinado a converter entre ASCII e EBCDIC, **DD** apareceu pela primeira vez na **Versão 5 Unix**. O comando dd é especificado pelo IEEE Std 1003.1-2008, que faz parte da Single UNIX Specification.


## Deletar/Remover MBR

Você pode excluir a mbr (master boot recored) usando o próprio comando dd. Um registro mestre de inicialização (MBR) é o setor de inicialização de 512 bytes que é o primeiro setor de um dispositivo de armazenamento de dados particionado de um disco rígido.

Compreendendo o tamanho do MBR

O tamanho MBR é o seguinte em bytes:

Onde, **[446 + 64 + 2 = 512]**

  - 446 bytes – Bootstrap.
  - 64 bytes – Partition table.
  - 2 bytes – Signature.


  * **ATENÇÃO :!: Esses exemplos podem travar seu computador se executado.**
  * **O comando a seguir eliminará completamente o MBR, incluindo todas as informações da partição.**
  * **Portanto, certifique-se de usar o nome correto do dispositivo e o tamanho do bloco em bytes.**


Opção #1: Comando para excluir mbr incluindo todas as partições

Abra um terminal e digite o seguinte comando para excluir tudo:

```bash
# dd if=/dev/zero of=/dev/sdX bs=512 count=1
```

Sua saída:

```
1+0 records in
1+0 records out
512 bytes (512 B) copied, 0.00308483 s, 166 kB/s
```


Onde,

  * **if=/dev/zero** ➜ Read data from /dev/zero and write it to /dev/sdX.
  * **of=/dev/sdX**  ➜ /dev/sdX is the USB drive to remove the MBR including all partitions.
  * **bs=512**       ➜ Read from /dev/zero and write to /dev/sdX up to 512 BYTES bytes at a time.
  * **count=1**      ➜ Copy only 1 BLOCK input blocks.


Opção #1: Comando para excluir somente mbr

O comando a seguir irá apagar mbr, mas não as suas partições:

```bash
# dd if=/dev/zero of=/dev/sdX bs=446 count=1
```


Onde,

  * **bs=446** ➜ Read from /dev/zero and write to /dev/sdX up to 446 BYTES bytes at a time.



## Links

  - [DD Command](https://www.cyberciti.biz/faq/linux-clearing-out-master-boot-record-dd-command/)
  - [DD Linux](https://en.wikipedia.org/wiki/Dd_(Unix))
  - [Linux Professional Institute](https://www.lpi.org/)


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}