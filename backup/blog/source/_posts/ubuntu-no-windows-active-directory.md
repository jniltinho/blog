---
title: Ubuntu no Windows Active Directory
categories:
- Linux
- Ubuntu
date: 2017-04-05 19:23:28
tags:
- linux
- ubuntu
- howto
- samba
---

![](/images/ubuntu_win_active_directory.jpg)

Como integrar o Ubuntu Desktop 64Bits em um ambiente Windows AD.
Você deve configurar a máquina Ubuntu Desktop client com o DNS do seu AD, colocar um nome para esse Desktop (altere os arquivos /etc/hosts, /etc/hostname), ter um nome do seu dominio e uma conta de administrador do Active Directory.
Execute os passos abaixo no terminal como super usuário (root).

<!-- more -->

Não esqueca de trocar o seudominio.local para seu dominio correto.
