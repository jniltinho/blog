---
title: Instalando Tomcat 9 no Linux
categories:
- Linux
date: 2017-04-14 22:01:03
tags:
- linux
- howto
- tomcat
- java
---

![](/images/apache-tomcat.png)


## Sobre o Projeto Tomcat

Apache Tomcat é um programa que surgiu com dois grandes propósitos: ser mais leve que os outros e eficiente. Ele é um servidor da Grande Rede, especialmente vinculado às tecnologias Java: uma ótima ajuda para quem quer criar e editar sites. Além de funcionar como um simples servidor Web, Apache Tomcat ainda pode ser integrado a outros.

O Tomcat é um servidor web Java, mais especificamente, um container de servlets. O Tomcat implementa, dentre outras de menor relevância, as tecnologias Java Servlet e JavaServer Pages (JSP) e não é um container EJB.
<!-- more -->

Desenvolvido pela Apache Software Foundation, é distribuído como software livre. Hoje um projeto independente, foi criado dentro do Apache Jakarta e posteriormente separado, uma vez que o Jakarta foi concluído.

Na época em que foi criado, foi oficialmente endossado pela Sun como a implementação de referência para as tecnologias Java Servlet e JavaServer Pages. Hoje, no entanto, a implementação de referência é o GlassFish.

Ele cobre parte da especificação Java EE com tecnologias como servlet e JSP, e tecnologias de apoio relacionadas como Realms e segurança, JNDI Resources e JDBC DataSources. Ele tem a capacidade de atuar também como servidor web, ou pode funcionar integrado a um servidor web dedicado como o Apache ou o IIS. Como servidor web, ele provê um servidor web HTTP puramente em Java.

O servidor inclui ferramentas para configuração e gerenciamento, o que também pode ser feito editando-se manualmente arquivos de configuração formatados em XML.


## Instalando o Java JRE 8

```bash
cd /usr/local/
wget --header 'Cookie: oraclelicense=a' http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jre-8u131-linux-x64.tar.gz
tar -xf jre-8u131-linux-x64.tar.gz && rm -f jre-8u131-linux-x64.tar.gz
mv jre1.8.0_131 java
echo 'JAVA_HOME=/usr/local/java
export JAVA_HOME
PATH=$PATH:$JAVA_HOME/bin
export PATH' >> /etc/profile
source /etc/profile
java -version
```

## Criando o grupo/usuario para o Tomcat

```bash
groupadd tomcat
useradd -M -s /bin/nologin -g tomcat -d /usr/local/tomcat tomcat
```

## Baixando e instalando o Tomcat 9

```bash
cd /usr/local/
wget http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz
tar -xvf apache-tomcat-9.0.0.M21.tar.gz
mv apache-tomcat-9.0.0.M21 tomcat
rm -f apache-tomcat-9.0.0.M21.tar.gz
cd /usr/local/tomcat
chgrp -R tomcat conf
chmod g+rwx conf
chmod g+r conf/*
chown -R tomcat webapps/ work/ temp/ logs/
chown -R tomcat:tomcat *
chown -R tomcat:tomcat /usr/local/tomcat
```

## Colocando o Service do Tomcat

```bash
echo '# Systemd unit file for tomcat
[Unit]
Description=Apache Tomcat Web Application Container
After=syslog.target network.target
[Service]
Type=forking
Environment=JAVA_HOME=/usr/local/java
Environment=CATALINA_PID=/usr/local/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/usr/local/tomcat
Environment=CATALINA_BASE=/usr/local/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'
ExecStart=/usr/local/tomcat/bin/startup.sh
ExecStop=/bin/kill -15 $MAINPID
User=tomcat
Group=tomcat
[Install]
WantedBy=multi-user.target' > /etc/systemd/system/tomcat.service
```

## Colocando o Tomcat para subir no boot

```bash
systemctl daemon-reload
systemctl start tomcat
systemctl enable tomcat
```

## Video de instalação do Tomcat 9 no Linux

{% youtube MZnoJliLOFc %}


## Mudando a porta do Tomcat de 8080 para 80


```bash
## Como root execute o comando abaixo
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
## Não esqueça de mudar a interface de Rede, no caso estou usando a eth0
## Você pode colocar essa regra no arquivo  /etc/rc.local, para executar no boot ou na sua regra de Firewall.
## Se você tiver regras de Firewall na máquina.
```



## Links

  * https://tomcat.apache.org/download-90.cgi
  * http://www.oracle.com/technetwork/pt/java/javase/downloads/jre8-downloads-2133155.html
  * https://gist.github.com/jniltinho/a7bd30288342a5d352e6
  * https://www.youtube.com/watch?v=MZnoJliLOFc
  * https://www.youtube.com/watch?v=PwR2SqAJk58
  * https://www.youtube.com/watch?v=xLPgPfmIMP8
  * http://www.zeitoun.net/articles/configure-mod_proxy_ajp-with-tomcat/start
  * https://tecadmin.net/create-virtualhost-in-tomcat/
  * https://www.mkyong.com/tomcat/how-to-change-tomcat-default-port/
  * http://stackoverflow.com/questions/10450045/why-does-tomcat-work-with-port-8080-but-not-80
  * [Howto use Apache2 Server as Reverse Proxy](https://www.digitalocean.com/community/tutorials/how-to-use-apache-http-server-as-reverse-proxy-using-mod_proxy-extension)


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}