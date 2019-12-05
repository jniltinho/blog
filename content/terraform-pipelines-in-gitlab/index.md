+++
title = "Pipelines Terraform no GitLab"
description = "Pipelines Terraform no GitLab"
date = 2019-12-05T12:33:00Z
draft = false
slug = "terraform-pipelines-in-gitlab"

[taxonomies]
categories = ["DevOps", "Terraform", "Cloud"]
tags = ["devops", "git", "gitlab", "ci/cd", "cloud", "terraform"]

[extra]
author = "jniltinho"
comments = true
+++

## Vamos falar sobre o GitLab

O [GitLab](https://gitlab.com) é um gerenciador de repositório de software baseado em git, com suporte a Wiki, gerenciamento de tarefas e CI/CD. [GitLab](https://gitlab.com) é similar ao [GitHub](https://github.com/), mas o [GitLab](https://gitlab.com) permite que os desenvolvedores armazenem o código em seus próprios servidores, ao invés de servidores de terceiros. Ele é software livre, distribuído pela Licença MIT. Está disponível como um pacote Omnibus, assim como um instalador simplificado provido pela Bitnami e pela Digital Ocean.

O código foi originalmente escrito em Ruby, com algumas partes posteriormente re-escritas em Go. A empresa possui atualmente 325 funcionários assalariados e o projeto de software livre conta com mais de 2.100 colaboradores.

![](gittlab-logo.png)

É usado por mais de 100.000 organizações, incluindo IPqM (Marinha do Brasil), IBM, Serpro (Serviço Federal de Processamento de Dados), NASA, Alibaba, Invincea, O’Reilly Media, CERN, Projeto GNOME e SpaceX.

Existem alguns conceitos fundamentais para a abordagem do GitLab ao CI/CD, que fazem sentido quando você está acostumado a eles, mas podem afetar sua decisão de usá-lo em seu projeto:

1. Todo repositório possui uma única configuração de pipeline, declarada em um arquivo .gitlab-ci.yml
2. Cada confirmação no repositório acionará uma execução desse pipeline
3. Isso significa que não é necessário solicitar variáveis a um usuário (se você está acostumado a parametrizar trabalhos de Jenkins, isso pode ser um choque)

## Vamos falar sobre o Terraform

O Terraform é uma ferramenta para construir, alterar e configurar uma infraestrutura de rede de forma segura e eficiente. Com ele é possível gerenciar serviços de nuvem bem conhecidos, bem como soluções internas personalizadas. Veja a lista completa de serviços de infraestrutura de nuvem suportados em: https://www.terraform.io/docs/providers/index.html.

![](terraform-logo.png)

Os arquivos de configuração do Terraform descrevem os componentes necessários para executar um único aplicativo ou todo o seu datacenter. Ele pode gerar um plano de execução descrevendo o que ele fará para atingir o estado desejado e, em seguida, ele pode executar as instruções para construir a infraestrutura descrita. Conforme a configuração muda, o Terraform é capaz de determinar o que mudou e criar planos de execução incrementais que podem ser aplicados.

O Terraform trata a infraestrutura como código e dessa forma você pode versioná-lo usando o Git, por exemplo, e ter um backup, fazer rollback em caso de problemas e fazer auditoria à medida que o tempo passa e as alterações vão sendo realizadas no seu ambiente.

O Terraform é desenvolvido e mantido pela empresa Hashicorp. Ele é gratuito com código fonte aberto e assim pode receber contribuições da comunidade no GitHub (https://github.com/hashicorp/terraform). Ele está disponível para download na página: https://www.terraform.io/downloads.html

## Começando

Este tutorial pressupõe que você criou uma conta gratuita no [GitLab](https://gitlab.com), mas também pode seguir sozinho com um servidor independente. Crie um novo projeto e adicione sua chave SSH para uso conveniente do git (o GitLab solicitará que você faça isso).

![](gitlab-ci_03.png)

Em seguida, adicione algumas configurações do Terraform ao seu repositório. Você pode usar os arquivos de exemplo da minha introdução à postagem do Terraform que constroem um cluster GKE básico. Você também precisará configurar o estado remoto, que é detalhado na minha postagem de pipelines anterior.

Este tutorial é realmente sobre os pipelines do GitLab em particular, portanto, se você precisar de mais detalhes, volte e leia rapidamente essas postagens. Se você precisar de uma atualização sobre o Git, dê uma olhada aqui.

Por fim, adicione um arquivo .gitignore que exclua o diretório creds que você criou (se você seguiu as postagens anteriores). Você não deseja confirmar as credenciais da sua conta de serviço no git! Por fim, seu repositório local deve ficar assim:

```quote
.gitignore
creds/serviceaccount.json
backend.tf
gkecluster.tf
provider.tf
```

## Para ilustrar esse artigo segue um vídeo usando GitLab

{{ youtube(id="wDjZGkfphbk") }}

![](/images/to-be-continued.png)

**Nota: Esse artigo vai ser melhorado em breve ...**

----

## Links

* [Post Original](https://medium.com/@timhberry/terraform-pipelines-in-gitlab-415b9d842596)
* [Do zero ao deploy #1](https://www.youtube.com/watch?v=wDjZGkfphbk)
* [Do zero ao deploy #2](https://www.youtube.com/watch?v=L69ZBHIqPZo)