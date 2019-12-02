---
title: Entendendo o Arquivo /etc/hosts
categories:
- Linux
date: 2017-04-06 10:05:03
tags:
- linux
- howto
---

![](/images/etc_hosts.png)

O arquivo hosts pode ser utilizado para diversos fins, no caso do desenvolvimento, ele pode nos interessar enquanto ajudar a configurar uma Virtual Host. Ao desenvolver um sistema nos deparamos com dois ambientes: o de desenvolvimento e o de produção. Sempre haverá um esforço para tentar igualar ao máximo os dois ambientes, criar uma Virtual Host é um desses esforços. A configuração do Virtual Host não depende do arquivo hosts, tanto que é considerado como um passo opcional. Ele nos ajuda a fazer o redirecionamento de uma determinada URL, portanto, compreender o funcionamento do arquivo hosts se faz necessário.
<!-- more -->

Este artigo é uma breve explicação do que é, como funciona e para que serve o arquivo hosts (considerando o Linux como sistema operacional). Para ajudar a entendê-lo, seria bom você ter uma noção do que é um número IP, noção do que é uma Virtual Host e ter instalado um servidor web no Linux. Na verdade, o público alvo deste artigo são aqueles desenvolvedores que possuem alguma experiência e estão tentando configurar uma Virtual Host (com o apoio do arquivo hosts) para equiparar o ambiente de desenvolvimento com o de produção.

O arquivo hosts presente em sistemas operacionais Linux, Windows, Mac e Unix, tem a função de mapear um nome para um endereço IP. Normalmente, é utilizado em conjunto com uma Virtual Host para configurar um ambiente de desenvolvimento, porém ele pode ser usado para diversos fins. Quando criamos uma Virtual Host, podemos ou não configurar o redirecionamento de URL's (domínios), fazemos isso através do DNS. O arquivo hosts pode ajudar simplificando o trabalho, pois é bem mais fácil configurá-lo do que configurar o DNS. Se você estava criando uma VIrutal Host e, de repente, se perguntou "o que é e como funciona o arquivo hosts? " este artigo é para você.

O arquivo hosts é uma das facilidades existentes no endereçamento de redes dentro de um computador. Faz parte da implementação do protocolo de internet e serve na tradução de um nome compreensível para os seres humanos em um endereço IP. Alguns sistemas operacionais utilizam o arquivo hosts como método preferencial de resolução de nomes ao invés de outros métodos como o DNS, por exemplo. Ao contrário do DNS, o arquivo hosts permite o controle direto do administrador local de um computador.


Inicialmente, ele contém um único mapeamento:

```
127.0.0.1   localhost
```

No exemplo acima, quando você digitar em seu navegador web localhost ele resolverá o nome para o IP 127.0.0.1. Este é o endereço da sua máquina local, também chamado de loopback (não confundir com o o endereço IP da sua máquina na rede).

O arquivo hosts aceita o sinal de #(sharp) para comentários e possui o seguinte formato.

```
IP Address       Hostname            Alias
```

O alias é opcional. Abaixo, vemos outro exemplo de arquivo hosts.

```
127.0.0.1       localhost           localmente
192.168.0.1     www.foo.com.br      foo
```

Quando digitarmos o endereço www.foo.com.br ele resolverá o nome para o IP 192.168.0.1.

Para visualizar o seu arquivo hosts execute no terminal cat /etc/hosts.

Você pode testar o funcionamento através de um navegador web ou através do utilitário curl. Digitar localhost no navegador ou curl localhost no terminal surtirá o mesmo efeito. Obviamente, no terminal você verá texto puro, enquanto que no navegador você verá a interpretação visual do mesmo. Se o curl estiver instalado, experimente no terminal....

```bash
curl localhost
curl 127.0.0.1
```

Se você utiliza Virtual Host para cada projeto, seu arquivo hosts deve ser parecido com o abaixo.

```
127.0.0.1       localhost
127.0.0.1       www.app1.dev
127.0.0.1       www.app2.dev
127.0.0.1       www.app3.dev
```

Todos os endereços apontam para 127.0.0.1, portanto, o redirecionamento para as devidas pastas de cada projeto deve ser realizada e configurada através do Virtual Host.

Você pode utilizar o nome exato de seu domínio. Imaginando que ele seja, por exemplo, www.foo.com.br, você poderá incluir em seu arquivo hosts a seguinte linha.

```
127.0.0.1       www.foo.com.br
```

Essa abordagem não permitirá a você acessar o endereço www.foo.com.br na web, pois ele aponta para sua máquina local. Mas, e se você quiser voltar a acessá-lo normalmente? Você terá que modificar o arquivo. Para evitar isso, você poderá utilizar nomes semelhantes, como por exemplo:

```
www.foo
www.foo.dev
foo.dev
```



## Links

  * http://www.devfuria.com.br/misc/arquivo-hosts/
  * http://www.devfuria.com.br/misc/apache-virtual-host/
  * http://br.ccm.net/faq/242-como-modificar-seu-arquivo-hosts


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}
