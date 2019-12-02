---
title: Instalando SQLServer no OpenSUSE
categories:
- Linux
- OpenSUSE
date: 2017-04-05 23:23:28
tags:
- linux
- opensuse
- howto
- sqlserver
---

## Instalando SQLServer no OpenSUSE 42.2

![](/images/sqlserver.png)
**Este post fornece um passo a passo de como instalar o SQLServer vNext CTP 2.0 no OpenSUSE 42.2.**


{% blockquote %}
NOTE: 
    Você precisa de pelo menos 3.25GB de RAM para executar o SQLServer no Linux.
    O sistema de arquivos deve ser XFS ou EXT4. Outros sistemas de arquivos, como BTRFS, não são suportados.
{% endblockquote %}

<!-- more -->

## Sobre o SQLServer

O Microsoft SQL Server é um sistema gerenciador de Banco de dados relacional (SGBD) desenvolvido pela Microsoft. Foi criado em parceria com a Sybase em 1988 inicialmente para a plataforma OS/2. Esta parceria durou até 1994, com o lançamento da versão para Windows NT e desde então a Microsoft mantém a manutenção do produto.
Como um Banco de dados, é um produto de software cuja principal função é a de armazenar e recuperar dados solicitados por outras aplicações de software, seja aqueles no mesmo computador ou aqueles em execução em outro computador através de uma rede (incluindo a Internet). 
Há pelo menos uma dúzia de diferentes edições do Microsoft SQL Server destinadas a públicos diferentes e para diferentes cargas de trabalho (variando de pequenas aplicações que armazenam e recuperam dados no mesmo computador, a milhões de usuários e computadores que acessam grandes quantidades de dados a partir da Internet ao mesmo tempo). Suas linguagens de consulta primárias são T-SQL e ANSI SQL.

## Passo a passo de como instalar

```bash
## Install MSSQL on OpenSUSE 42.2 64Bits as root user
zypper ar -fc https://packages.microsoft.com/config/sles/12/mssql-server.repo
zypper --gpg-auto-import-keys refresh
## Run the following commands to install SQL Server
zypper in mssql-server
/opt/mssql/bin/sqlservr-setup
## Install tools on SLES
zypper ar -fc https://packages.microsoft.com/config/sles/12/prod.repo 
zypper --gpg-auto-import-keys refresh
zypper in mssql-tools unixODBC-devel
ln -sfn /opt/mssql-tools/bin/sqlcmd /usr/local/bin/sqlcmd 
ln -sfn /opt/mssql-tools/bin/bcp /usr/local/bin/bcp
```


## Testando o SQLServer e o comando SQLCMD


![](/images/sqlserver_openssue.png)

```sql
sqlcmd -Usa -S 127.0.0.1
SELECT Name from sys.Databases;
GO
CREATE DATABASE Nilton_OS;
GO
USE Nilton_OS;
GO
CREATE TABLE inventory (id INT, name NVARCHAR(50), quantity INT);
GO
INSERT INTO inventory VALUES (1, 'banana', 150);
INSERT INTO inventory VALUES (2, 'orange', 154);
GO
SELECT * FROM inventory WHERE quantity > 149;
GO
```



## Links

  * https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-suse-linux-enterprise-server
  * https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-connect-and-query-sqlcmd
  * https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-migrate-sqlpackage
  * https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-red-hat
  * https://gist.github.com/jniltinho/c67a9e85c651e187d2da2f0a813fe46a


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}