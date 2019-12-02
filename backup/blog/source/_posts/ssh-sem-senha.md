---
title: Usando chaves de autenticação no SSH
categories:
- Linux
date: 2017-04-05 21:00:03
tags:
- linux
- howto
---

![](/images/esquema_servidor_ssh.png)

Por mais seguras que sejam suas senhas, sempre existe uma pequena possibilidade de que um atacante descubra alguma delas, observando enquanto você digita no teclado, ou que simplesmente consiga adivinhá-la a partir de informações pessoais ou de senhas antigas. Como de praxe, o SSH oferece uma resposta para o problema. Em vez de depender unicamente da senha como forma de autenticação, você pode utilizar um par de chaves de autenticação, onde a chave pública é instalada nos servidores que serão acessados e a chave privada (que nunca sai da sua máquina) é protegida por uma passphrase, sem a qual a chave se torna inútil.
<!-- more -->

Para gerar o par de chaves, use (no cliente) o comando:

```bash
$ ssh-keygen -t rsa
```

Ele deve ser executado usando seu login de usuário (o mesmo que você usa para acessar os servidores remotos), não como root:

```bash
Generating public/private rsa key pair.
Enter file in which to save the key (/home/nilton/.ssh/id_rsa):
Created directory '/home/nilton/.ssh'.
Enter passphrase (empty for no passphrase): ********
Enter same passphrase again: ********
Your identification has been saved in /home/nilton/.ssh/id_rsa.
Your public key has been saved in /home/nilton/.ssh/id_rsa.pub.
The key fingerprint is:
ff:28:16:f6:97:67:9f:4d:9a:c8:0a:3b:21:81:88:b4 nilton@linuxpro
```

A passphrase pode ser desde uma senha "normal", com 8 ou 12 caracteres, até uma frase complexa, sem limite de tamanho: o importante é que não seja algo fácil de adivinhar. A passphrase é, na verdade, um componente da chave de encriptação; sem ela é impossível usar a chave.

O comando gerará os arquivos **".ssh/id_rsa"** e **".ssh/id_rsa.pub"** dentro do seu diretório home, que são, respectivamente, sua chave privada e sua chave pública.

Depois de gerar seu par de chaves, falta o comando final, que instala a chave pública no servidor, permitindo que ela seja usada para autenticação:

```bash
$ ssh-copy-id -i ~/.ssh/id_rsa.pub login@servidor
```

Como o nome sugere, o comando "ssh-copy-id" copia sua chave pública, instalando-a no servidor. Ao usá-lo, substitua o "login" pelo seu login de usuário e o "servidor" pelo endereço IP ou o domínio do servidor.

Ao ser executado, ele abrirá uma conexão via SFTP (ainda utilizando seu login e senha de acesso), que é usada para instalar a chave pública (o arquivo ".ssh/id_rsa.pub", dentro do seu home) no diretório correspondente do servidor.

A partir daí, ao invés de pedir sua senha, o servidor envia um "desafio" encriptado usando a chave pública. Para respondê-lo, o cliente SSH na sua máquina precisa usar a chave privada, que por sua vez precisa ser destravada usando a passphrase. Mesmo que alguém consiga roubar sua chave privada, não conseguirá conectar sem saber a passphrase e vice-versa.

Concluindo, depois de gerar a chave e conseguir se conectar através dela, você pode desativar a possibilidade de fazer logins normais, usando senha. Nesse caso, apenas você, que possui a chave gerada, conseguirá se conectar ao servidor.

Para isso, mude as opções "PasswordAuthentication" e "UsePAM" para "no" no arquivo "/etc/ssh/sshd_config" do servidor:

```bash
PasswordAuthentication no
UsePAM no
```

A opção "PasswordAutentication no" permite desativar o uso das senhas, como esperado, enquanto a "UsePAM no" reforça a configuração, desativando qualquer outra forma de autenticação com exceção das chaves.

Para que as alterações entrem em vigor, reinicie o servidor SSH:

```bash
/etc/init.d/ssh restart
```


## Links

  * http://www.hardware.com.br/dicas/ssh-usando-chaves.html
  * http://www.hardware.com.br/dicas/ssh-login-automatico.html
  * http://wairissongomes.blogspot.com.br/2010/07/ssh-sem-senha.html


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}

