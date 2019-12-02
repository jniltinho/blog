---
title: Instalando o OpenCMS
categories:
- Linux
date: 2017-04-06 10:05:03
tags:
- linux
- howto
- tomcat
- java
- cms
---

![](/images/opencms_logo.svg.png)

OpenCMS é um sistema de gerenciamento de conteúdo (em inglês: Content Management System) baseado em Java e XML.
O sistema de Open Source, desenvolvida desde 2000, é software livre sob a licença LGPL e é distribuído pela empresa alemã Alkacon Software que coordena junto com colaboradores o desenvolvimento e melhoria do sistema.
<!-- more -->


A linguagem de programação utilizada permite que o OpenCms seja um sistema independente de plataforma podendo ser utilizado em qualquer sistema operacional que suporte a máquina virtual Java.

Depois do [Tomcat](instalando-tomcat-9-no-ubuntu) instalando e funcionando corretamente execute os passos abaixo como root.

```bash
## Important: You will have to increase the MySQL/MariaDB
## configuration variable max_allowed_packet located in 
## the MySQL/MariaDB configuration file: /etc/mysql/mariadb.conf.d/50-server.cnf.
## For OpenCms, the limit should be as high as possible,
## a setting of max_allowed_packet=32M is recommended.
FILE_DB=/etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s|max_allowed_packet\t= 16M|max_allowed_packet\t= 32M|" ${FILE_DB}
service mysql restart
systemctl stop tomcat
sleep 5
cd /tmp/
wget http://www.opencms.org/downloads/opencms/opencms-10.5.0_beta.zip
unzip opencms-10.5.0_beta.zip
unzip -d opencms opencms.war
rm -f history  install.html  license opencms-10.5.0_beta.zip opencms.war
mv opencms /usr/local/tomcat/webapps/
chown -R tomcat:tomcat /usr/local/tomcat/webapps/*
systemctl start tomcat
```

```
## Acesse a aplicação via web
## http://seu_server:8080/opencms/setup/
###----------------------------------------------------------------------------------
## Integração com Apache2
## a2enmod proxy_ajp
## a2enmod proxy
## a2enmod proxy_http
###----------------------------------------------------------------------------------
### Adicionar na Config Vhost do Site
### ProxyRequests Off
### ProxyPreserveHost On
### ProxyPass /opencms/ ajp://localhost:8009/opencms/
### ProxyPassReverse /opencms/ ajp://localhost:8009/opencms/
###----------------------------------------------------------------------------------
## Reinicie o Apache2
## service apache2 restart
```



## Links

  * https://gist.github.com/jniltinho/a7bd30288342a5d352e6
  * https://www.youtube.com/watch?v=PwR2SqAJk58
  * https://pt.wikipedia.org/wiki/OpenCMS



{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}