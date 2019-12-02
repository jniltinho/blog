---
title: Samba4 4.7.0 Setup OpenSUSE 42.3
categories:
- Linux
- OpenSUSE
- Samba4
date: 2017-04-05 19:05:03
tags:
- opensuse
- linux
- ad
- howto
- samba4
---

[![](/images/samba4vsactive.png)](https://www.youtube.com/watch?v=Ig3ZzqEonFs)

## Setup do Servidor

* **Servidor com Samba4 4.7.0, OpenSUSE 42.3 64Bits**
* **IP: 192.168.56.100**
* **Nome: dc1.linuxpro.net**
* Configurar o arquivo: /etc/hosts e adicionar,**192.168.56.100 DC1.linuxpro.net DC1**, no final do arquivo
* Configurar o arquivo: /etc/HOSTNAME e colocar assim: **DC1.linuxpro.net** no arquivo

<!-- more -->


## Setup dos Clientes

* **Qualquer Desktop Windows 7/10 ou Ubuntu 16.04**
* **REDE: 192.168.56.X**
* **Nome: desktopX.linuxpro.net**
* Configurar o arquivo: /etc/resolv.conf e adicionar, **nameserver 192.168.56.100** no arquivo
* Configurar o arquivo: /etc/resolv.conf e adicionar,**search linuxpro.net** no arquivo
* Caso seja Linux Ubuntu executar [esse script para integração](https://gist.github.com/jniltinho/da0ef938ece852f57faa502c788a82a4) com AD.


## Ambiente no Server

```bash Criando o Ambiente no Servidor
zypper ar http://download.opensuse.org/repositories/home:/jniltinho/openSUSE_Leap_42.3/home:jniltinho.repo
zypper --gpg-auto-import-keys refresh
zypper in samba4-4.7.0
##ln -s /opt/samba4/bin/samba-tool /usr/local/bin/
echo 'export PATH=$PATH:/opt/samba4/bin:/opt/samba4/sbin' >> /etc/profile
source /etc/profile
```


```bash Alterar os arquivos:
## /etc/hosts e /etc/HOSTNAME
## /etc/hosts
## Exemplo: Adicionado -> 192.168.56.100 DC1.linuxpro.net DC1
## /etc/HOSTNAME
## Exemplo: DC1.linuxpro.net
samba-tool domain provision --server-role=dc --use-rfc2307 \
--dns-backend=SAMBA_INTERNAL --realm=LINUXPRO.NET --domain=LINUXPRO --adminpass=Linuxpro123456
```


```bash
#samba-tool domain provision --server-role=dc --use-rfc2307 --function-level=2008_R2 \
#--use-xattrs=yes --dns-backend=SAMBA_INTERNAL --realm=LINUXPRO.NET --domain=LINUXPRO --adminpass=Linuxpro123456
systemctl start samba4.service
systemctl enable samba4.service
```



## Add Users into Samba4

```bash
## Create user in Samba4 CLI
samba-tool user create Linuxpro
```

## How to Reset Administrator Password
 
In case you forgot the administrator password then no need to panic as you can reset the password by logging physically into the domain server box

```bash
samba-tool user setpassword Administrator
## New Password:
## Enter it again:
## Password changed.
```


## Ubuntu no AD

Caso você precise integrar o [Ubuntu no Active Directory](/2017/04/Ubuntu-no-Windows-Active-Directory/) fiz esse howto de instalação e configuração.


## Links

* http://download.opensuse.org/repositories/home:/jniltinho/
* https://wiki.samba.org/index.php/Setting_up_Samba_as_an_Active_Directory_Domain_Controller
* https://wiki.samba.org/index.php/Adding_users_with_samba_tool
* https://wiki.samba.org/index.php/User_and_Group_management
* [RSAT para Windows 10](https://www.microsoft.com/en-ca/download/details.aspx?id=45520%20)
* https://www.youtube.com/watch?v=05npEB_Pi1I
* https://wiki.samba.org/index.php/Installing_RSAT
* https://www.youtube.com/watch?v=9Rs4RSfTgL0
* https://build.opensuse.org/package/show/home:jniltinho/samba4_4.5
* https://www.youtube.com/watch?v=w3mhxue6JFU
* http://wiki.fabriciovc.eti.br/doku.php/linux/artigos/samba4
* http://tecnoti.info/?p=75


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}
