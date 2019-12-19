+++
title = "Conhecendo o DNS"
description = "Conhecendo o DNS"
date = 2019-04-05T21:00:03Z
draft = false
slug = "conhecendo-o-dns"

[taxonomies]
categories = ["Linux"]
tags = ["linux", "dns", "net", "dicas"]

[extra]
author = "jniltinho"
comments = true
+++

## O que é DNS

![](/images/dns.png)

DNS é a sigla em inglês para Domain Name System (Sistema de Nomes e Domínios, em português), responsável por transformar os nomes dos domínios dos sites que as pessoas digitam nos navegadores web em números IP.
O DNS opera principalmente através de duas funções: examinar e atualizar bancos de dados e resolver nomes de domínios em endereços de rede.

O sistema de distribuição de nomes de domínio começou no ano de 1984, e através dele tornou-se possível que os nomes de hostsresidentes em um banco de dados pudessem ser distribuído entre vários servidores, diminuindo assim a carga em qualquer servidor.
O DNS baseia-se em nomes hierárquicos e permite a inscrição de vários dados digitados, além do nome do Hoste do IP (Internet Protocol).
<!-- more -->

{{ youtube(id="ACGuo26MswI") }}

Pelo fato de o banco de dados de DNS ser distribuído, o tamanho é ilimitado e o desempenho não altera quando outros servidores são adicionados.
Existem 13 servidores DNS no mundo todo e sem eles a Internet não funcionaria.
O servidor DNS traduz nomes para os endereços IP e vice-versa, permitindo a localização de hostsem um domínio determinado.
O servidor DNS é dividido entre DNS primário e DNS secundário, que é a cópia de segurança do DNS primário.

## O que é DNS Reverso ?

O DNS Reverso resolve o endereço IP, buscando o nome de domínio associado ao host. Ou seja, quando temos disponível o endereço IP de um host e não sabemos o endereço do domínio(nome dado à máquina ou outro equipamento que acesse uma rede), tentamos resolver o endereço IP através do DNS reverso que procura qual nome de domínio está associado aquele endereço. Os servidores que utilizam o DNS Reverso conseguem verificar a autenticidade de endereços, verificando se o endereço IP atual corresponde ao endereço IP informado pelo servidor DNS. **Isto evita que alguém utilize um domínio que não lhe pertence para enviar spam, por exemplo**.

## Conceito Básico

O DNS Reverso transforma 66.249.71.47 em dominio.com.br ou seja, um endereço IP em nome. O caminho clássico para resolução é: DNS resolver ➜ root servers ➜ ARIN (North American IP registry) ➜ Local ISP ➜ Acme Inc. DNS servers.

**Quem quer que seja seu fornecedor de IPs deve ou adicionar suas entradas em seus servidores de DNS ou delegar autoridade de suas entradas de reverso para seus servidores de DNS**. As entradas de DNS Reverso utilizam hostname com um endereço de IP reverso com ".in-addr.arpa" adicionado a ele. Por exemplo, “124.168.184.200.in-addr.arpa".

O DNS padrão utiliza entradas do tipo "A Records" enquanto o DNS Reverso utilize "PTR records" que se parecem com "124.168.184.200.in-addr.arpa. PTR host.example.com" (enquanto um DNS padrão seria algo como "host.example.com. A 66.249.71.47").

{{ youtube(id="VIa1dHtmQ4U") }}

## Funcionamento DNS Padrão

É comum que muitas pessoas só conheçam o "padrão" DNS para resolução de hostname em endereço IP que transformaria dominio.com.br em 66.249.71.47. Esse processo começa com o registro de um domínio, no Brasil, o registro.br é uma das entidades (registrar) em que podemos criar novos domínios existem centenas de registrars em todo o mundo.

Ao criar um domínio você deve informar seus servidores de DNS que serão responsáveis em apontar o novo domínio para um endereço IP e, por outro lado, o registro.br envia essa informação aos servidores root (tecnicamente falando, o parent server para seu TLD). Dessa forma, qualquer pessoa no mundo pode acessar seus domínios e você pode enviar a elas qualquer endereço de IP que desejar. Você tem total controle sobre seus domínios e pode até enviar endereços de IPs que não te pertençam – nesse caso você precisaria de permissão do verdadeiro dono do IP que seus servidores DNS retornam como resultado de uma resolução.

![](/images/dns_02.png)

## Como funciona a Internet

Serie feita pelo [Nic.br](https://www.youtube.com/channel/UCscVLgae-2f9baEXhVbM1ng) de como funciona a Internet, caso você esteja criando ou administrando um Servidor de E-mail, Sites, DNS, pare um pouco e veja esses 4 vídeos do Nic.br.

* [[https://www.youtube.com/watch?v=HNQD0qJ0TC4|Parte 1: O protocolo IP]]
* [[https://www.youtube.com/watch?v=C5qNAT_j63M|Parte 2: Sistemas Autônomos, BGP, PTTs.]]
* [[https://www.youtube.com/watch?v=ACGuo26MswI|Parte 3: DNS]]
* [[https://www.youtube.com/watch?v=ZYsjMEISR6E|Parte 4: Governança da Internet]]
* [[https://www.youtube.com/watch?v=epWv0-eqRMw|A importância do DNS nas redes]]

## Links

* https://www.oficinadanet.com.br/artigo/1335/o_que_e_o_dns_reverso
* https://www.significados.com.br/dns/
