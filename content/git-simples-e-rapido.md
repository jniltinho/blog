+++
title = "Git simples e rápido"
description = "Git simples e rápido"
date = 2017-04-13T10:54:00Z
draft = false
slug = "git-simples-e-rapido"

[taxonomies]
categories = ["Desenv", "DevOps", "Linux"]
tags = ["devops", "git", "github", "desenv", "linux", "win"]

[extra]
author = "jniltinho"
comments = true
+++

![](/images/git_logo.png)

## A História do Git

Assim como muitas coisas boas na vida, o Git começou com um tanto de destruição criativa e controvérsia acirrada. O kernel (núcleo) do Linux é um projeto de software de código aberto de escopo razoavelmente grande. Durante a maior parte do período de manutenção do kernel do Linux (1991-2002), as mudanças no software eram repassadas como patches e arquivos compactados. Em 2002, o projeto do kernel do Linux começou a usar um sistema DVCS proprietário chamado BitKeeper.
<!-- more -->

Em 2005, o relacionamento entre a comunidade que desenvolvia o kernel e a empresa que desenvolvia comercialmente o BitKeeper se desfez, e o status de isento-de-pagamento da ferramenta foi revogado. Isso levou a comunidade de desenvolvedores do Linux (em particular Linus Torvalds, o criador do Linux) a desenvolver sua própria ferramenta baseada nas lições que eles aprenderam ao usar o BitKeeper. Alguns dos objetivos do novo sistema eram:

* Velocidade
* Design simples
* Suporte robusto a desenvolvimento não linear (milhares de branches paralelos)
* Totalmente distribuído
* Capaz de lidar eficientemente com grandes projetos como o kernel do Linux (velocidade e volume de dados)

Desde sua concepção em 2005, o Git evoluiu e amadureceu a ponto de ser um sistema fácil de usar e ainda assim mantém essas qualidades iniciais. É incrivelmente rápido, bastante eficiente com grandes projetos e possui um sistema impressionante de branching para desenvolvimento não-linear.

## Instalando o Git

Na sua distribuição Linux, procure pelo pacote git-core
Usando o Debian ou Ubuntu:

```bash
sudo apt-get install git-core
```

## Setando o username e e-mail global

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

## Gerando uma chave SSH para enviar ao Github

Mais detalhes sobre chave SSH veja [nesse post](/2017/04/ssh-sem-senha/).

```bash
ssh-keygen -t rsa -b 4096 -C "johndoe@example.com"
Generating public/private rsa key pair.
Enter a file in which to save the key (/home/you/.ssh/id_rsa): [Press enter]
```

## Criando um novo repositório

Crie uma nova pasta, abra-a e execute o comando abaixo:
Para criar um novo repositório.

```bash
git init
```

## Obtenha um repositório

Crie uma cópia de trabalho em um repositório local executando o comando:

```bash
git clone /caminho/para/o/repositório
```

Quando usar um servidor remoto, no caso o [github](https://github.com) ou [gitlab](https://about.gitlab.com/), seu comando será:

```bash
git clone git@github.com:usergithub/projeto.git
```

## Adicionar & Confirmar

Você pode propor mudanças (adicioná-las ao Index) usando

```bash
git add <arquivo>
git add *
```

Este é o primeiro passo no fluxo de trabalho básico do git.
Para realmente confirmar estas mudanças (isto é, fazer um commit), use

```bash
git commit -m "comentários das alterações"
```

Agora o arquivo é enviado para o HEAD, mas ainda não para o repositório remoto.

## Enviando alterações

Suas alterações agora estão no HEAD da sua cópia de trabalho local.
Para enviar estas alterações ao seu repositório remoto, execute

```bash
git push origin master
```

Altere master para qualquer ramo (branch) desejado, enviando suas alterações para ele.
Se você não clonou um repositório existente e quer conectar seu repositório a um servidor remoto, você deve adicioná-lo com

```bash
git remote add origin <servidor>
```

Agora você é capaz de enviar suas alterações para o servidor remoto selecionado.

## Assista o Vídeo do LinuxTips 

Assiste o vídeo **"Descomplicando o GIT"** feito pelo [LinuxTips](https://www.youtube.com/channel/UCJnKVGmXRXrH49Tvrx5X0Sw), grande [Jeferson](https://br.linkedin.com/in/jefersonfernando).

{{ youtube("_aj3hsEh9iw") }}

## Links

* [LinuxTips](https://www.youtube.com/channel/UCJnKVGmXRXrH49Tvrx5X0Sw)
* [Entrevista com o Jeferson](https://www.youtube.com/watch?v=3GQs_JlM04o)
* [Git #1 Introdução por Rodrigo Branas](https://www.youtube.com/watch?v=C18qzn7j4SM)
* [Git #2 Branching e Merging Rodrigo Branas](https://www.youtube.com/watch?v=_Mir2_YlA0g)
* [Git #3 Stash Rodrigo Branas](https://www.youtube.com/watch?v=twNbUHFlwfE)
* http://rogerdudler.github.io/git-guide/index.pt_BR.html
* https://git-scm.com/book/pt-br/v1/Primeiros-passos-Sobre-Controle-de-Vers%C3%A3o
* https://git-scm.com/book/pt-br/v1/Primeiros-passos-No%C3%A7%C3%B5es-B%C3%A1sicas-de-Git
