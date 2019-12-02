---
title: Instalação do Zimbra 8.7.1 no Ubuntu
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

[![](/images/install_zimbra_871.png)](https://www.youtube.com/watch?v=iG7xPekB3kE)

Nesse [video howto](https://www.youtube.com/watch?v=iG7xPekB3kE) mostro o passo a passo da Instalação do Zimbra 8.7.1 no Ubuntu 16.04 64Bits.
Em breve vou fazer um video Zimbra e a integração com o projeto** [SPFBL](http://spfbl.net/compatibilidade.html).
O arquivo do Zimbra agora tem 256MB, A ISO do Ubuntu 16.04 Server 64Bits tem em media 700MB.
Mais detalhes sobre o Zimbra você encontra nesse link [aqui](/2017/04/novo-zimbra-8/).

<!-- more -->


  - Instalação do Zimbra, Servidor de E-mail no Ubuntu 16.04
  - Primeiro você deve baixar e instalar a versão 16.04 do Ubuntu Server 64 Bits, efetue um instalação clean
  - Requisito de instalação 4GB de RAM 80GB de HD, isso para um ambiente de Produção
  - A instalação do Zimbra é um pouco demorada
  - Após instalar e configurar o Ubuntu execute os procedimentos abaixo
  - Nessa etapa escolha a opção 6 e depois 4
  - Para configurar a senha do administrador (admin do Zimbra)
  - Depois r, a, yes
  - Essa parte da instalação demora um pouco, tenha um pouco de paciência
  - Apos a instalação 90% da administração pode ser efetuado via Web
  - Enquanto a instalação não terminar, aproveita para acessar o Wiki do Zimbra e aprender como configurar via CLI entre outras coisas
  - Nota, como o Zimbra é feito em Java, o Servidor precisar de mais memória que um Servidor normal de E-mail
  - Minha recomendação para um ambiente de 100 ou 200 contas de e-mail com fluxo muito grande é 8GB de RAM HD e 1TB e outro de Backup de 1TB, processadores Xeon com 4 cores, Servidor HP ou DELL ou em um Ambiente Virtualizado com muito processamento e IO.
  - Pronto Finalizado a instalação é acessar o Zimbra via Web
  - IP ou nome do Servidor em https


```bash
apt-get update
apt-get upgrade
apt-get install libperl5.22 sysstat sqlite3 pax libhttp-date-perl
apt-get install libgetopt-mixed-perl libgmp10
apt-get install libmime-explode-perl file lvm2 libaio1
echo '
alias mailq="/opt/zimbra/common/sbin/mailq"
alias postsuper="/opt/zimbra/common/sbin/postsuper"
alias postcat="/opt/zimbra/common/sbin/postcat"
alias tmail="tail -f /var/log/mail.log"
' >> /root/.bashrc
source /root/.bashrc
cd /tmp/
wget https://files.zimbra.com/downloads/8.7.1_GA/zcs-8.7.1_GA_1670.UBUNTU16_64.20161025045114.tgz
tar -xvf zcs-8.7.1_GA_1670.UBUNTU16_64.20161025045114.tgz
cd zcs-8.7.1_GA_1670.UBUNTU16_64.20161025045114
./install.sh
```

## Depois da Instalação

```bash
## Troubleshooting incoming mail problems
## Depois da instalação executar os passos abaixo:
su - zimbra
zmprov ms `zmhostname` zimbraMtaLmtpHostLookup native
zmprov mcf zimbraMtaLmtpHostLookup native
zmmtactl restart
```

Depois de instalado o Zimbra, ele fica na pasta /opt/zimbra que vai ficar 2.9GB, ele criar o usuário zimbra, que você pode usá-lo para cli do Zimbra, tem alguns dicas de cli no [Wiki do Zimbra](https://wiki.zimbra.com/wiki/Zmprov_Examples).

Pronto a instalação foi finalizada, o acesso está liberado.



## Links

  * https://www.howtoforge.com/the-perfect-server-ubuntu-14.04-nginx-bind-mysql-php-postfix-dovecot-and-ispconfig3-p3
  * http://releases.ubuntu.com/16.04.1/ubuntu-16.04.1-server-amd64.iso
  * https://wiki.zimbra.com/wiki/Incoming_Mail_Problems
  * https://wiki.zimbra.com/wiki/Zmprov_Examples
  * https://www.zimbra.com/downloads/zimbra-collaboration-open-source/
  * https://files.zimbra.com/downloads/8.7.1_GA/zcs-8.7.1_GA_1670.UBUNTU16_64.20161025045114.tgz
  * https://wiki.zimbra.com/wiki/Zimbra_Releases/8.7.1
  * https://wiki.zimbra.com/wiki/Zmprov
  * https://github.com/leonamp/SPFBL/wiki/Integra%C3%A7%C3%A3o-com-Zimbra---SPFBL



## Vídeo de Instalação do Zimbra 8.7.9

{% youtube uIH9mRUCyTg %}


## Instalando o Zimbra 8.7.9

```bash
apt-get update
apt-get upgrade
apt-get install libperl5.22 sysstat sqlite3 pax libhttp-date-perl
apt-get install libgetopt-mixed-perl libgmp10
apt-get install libmime-explode-perl file lvm2 libaio1
echo '
alias mailq="/opt/zimbra/common/sbin/mailq"
alias postsuper="/opt/zimbra/common/sbin/postsuper"
alias postcat="/opt/zimbra/common/sbin/postcat"
alias tmail="tail -f /var/log/mail.log"
' >> /root/.bashrc
source /root/.bashrc
cd /tmp/
wget https://files.zimbra.com/downloads/8.7.9_GA/zcs-8.7.9_GA_1794.UBUNTU16_64.20170505054622.tgz
tar -xvf zcs-8.7.9_GA_1794.UBUNTU16_64.20170505054622.tgz
cd zcs-8.7.9_GA_1794.UBUNTU16_64.20170505054622
bash install.sh
```

## Depois da Instalação

```bash
## Troubleshooting incoming mail problems
## Depois da instalação executar os passos abaixo:
su - zimbra
zmprov ms `zmhostname` zimbraMtaLmtpHostLookup native
zmprov mcf zimbraMtaLmtpHostLookup native
zmmtactl restart
```


## Links para o Zimbra 8.7.9

  * [Zimbra 8.7.9 para CentOS 7 64Bits](https://files.zimbra.com/downloads/8.7.9_GA/zcs-8.7.9_GA_1794.RHEL7_64.20170505054622.tgz)
  * [Zimbra 8.7.9 para UBUNTU 16.04 64Bits](https://files.zimbra.com/downloads/8.7.9_GA/zcs-8.7.9_GA_1794.UBUNTU16_64.20170505054622.tgz)

{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}