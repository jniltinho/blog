
---
title: Automatizando ambientes com Puppet #1
categories:
- Linux
- Puppet
- Infra
date: 2017-04-12 10:40:00
tags:
- linux
- puppet
- infra
---

![](/images/puppet-labs-logo.png)

## Automatizando ambientes com Puppet #1

## O que é o Puppet ?

Puppet é uma ferramenta Open Source para gerenciamento de configuração. Ele é utilizado por diversas empresas, que precisam gerenciar milhares de máquinas físicas e virtuais ao redor do mundo. Podemos destacar dentre os usuários do Puppet a Cisco, at&t, PayPal e muitas outras organizações.

<!-- more -->

O Puppet foi criado em 2005 como uma ferramenta de gerenciamento de configuração open source e está disponível para download gratuito sob a licença Apache 2.0.
Ele tem suporte para diversos sistemas operacionais como: Linux, *BSDs, Solaris, Windows e outros.
Existe também o [Puppet Enterprise](http://puppetlabs.com/puppet/puppet-enterprise) que trata-se do produto comercializado pela Puppet Labs.

Ele é composto por uma linguagem declarativa que nos permite expressar as configurações que nossos servidores devem ter, fazendo isto através de uma sintaxe simples e prática.

![](/images/puppet-diagram.png)

Ele nos oferece um cliente (agente) e um servidor (master) para distribuir estas configurações em nosso parque.

## Puppet pode realizar diversas tarefas, tais como:

  * Gerência de configuração.
  * Automação na instalação de pacotes.
  * Estabelece e garante normas e facilidade de auditoria.

Ele é voltado para Desenvolvedores e Administradores de Sistemas e Redes.
Saiba mais sobre Puppet com [essa apostila](https://puppet-br.github.io/apostila-puppet/), ou aguarde os próximos posts.
Você pode participar do grupo Puppet-BR no [Telegram](https://telegram.me/puppetbr).

No Puppet essencialmente tudo é MODELADO e tratado como se fossem DADOS.

O estado atual do node (servidor), a configuração desejada, as ações tomadas durante as configurações são representados como "dados" e inseridos em um catálogo.

Ele pode funcionar de duas formas, você pode criar configurações e aplicar localmente usando o recurso APPLY, ou você pode trabalhar em modo AGENTE/MESTRE (cliente/servidor).
Como o puppet funciona?

![](/images/puppet-architecture.png)

Uma vez que você instala o puppet, cada nó (servidor físico, dispositivo ou máquina virtual) em sua infraestrutura tem um agente instalado nele. Você também pode ter um servidor designado como o mestre. A execução do puppet seguem os passos abaixo:

  * Fact collection – Em cada nó o agente do puppet envia informações (ou facts) sobre configuração do nó — detalhando o seu hardware, sistema operacional, as versões dos pacotes e demais informações — para o puppet master;
  * Catalog compilation – O puppet master usa o Fact Collection fornecidos pelo agente para compilar as informações sobre como cada nó deve ser configurado — chamando o catálogo (lista de pacotes ou configurações que são controladas pelo puppet) — e o envia para o agente;
  * Enforcement – O agente realiza as alterações necessárias para que o nó esteja em conformidade com o catalogo.

## Observação:

{% blockquote %}
Se você optar por executar no modo no-op (simulação), o agente simplesmente simulará as alterações;
{% endblockquote %}

  * Report – Cada agente envia um relatório para o puppet master, indicando todas as alterações que foram efetivadas para a deixar o no em conformidade com seu catálogo;
  * Report sharing – A API aberta do puppet pode enviar dados para outras ferramentas, permitindo a você poder compartilhar informações de infraestrutura com outras equipes.

## Principais vantagens:

  * Redução de custos de manutenção de computadores – equipe pequena gerenciando um grande parque;
  * Diminuição da sobrecarga em sua equipe – menos horas extras no trabalho, mais horas dos seus admins com suas famílias. Isto significa menor estresse para toda equipe e maior produtividade e criatividade;
  * Diminuição do downtime de seu ambiente – padronização significa maior controle e eficiência;
  * Maior facilidade para executar atualização de sistemas e serviços de forma controlada;
  * Maior facilidade e flexibilidade para distribuir configurações para todo o parque de forma controlada;
  * Maior facilidade e flexibilidade para implantar novas soluções com menor trauma e consequentemente menor custo, fazendo isto em todo o parque de uma vez – imagine, por exemplo, implantar um novo agente de monitoramento em centenas de servidores;
  * Retorno de uma configuração ou de arquivos modificados de forma fácil e simplificada através do filebucket;
  * Excelentes ferramentas em linha de comando que nos permitem usá-lo de forma fácil;
  * Acelerar a criação de novos servidores;
  * Acelerar a criação de novos serviços;

{% blockquote %}
**No próximo post vou apresentar uma forma prática e simples do uso dessa ferramenta.**
{% endblockquote %}

## Links

  * http://puppet-br.org/
  * http://puppetlabs.com/
  * http://docs.puppetlabs.com/
  * http://planeta.puppet-br.org/


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}