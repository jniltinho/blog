---
title: Partição do Mac no Ubuntu
categories:
- Linux
- Ubuntu
- Mac
date: 2017-04-05 21:00:03
tags:
- linux
- ubuntu
- mac
- howto
---

![](/images/apple_imac.png)

**Como montar uma partição HFS+ no Ubuntu para leitura/gravação?**

**Abaixo segue os comandos para executar no Terminal com permissão de root, foi executado no Ubuntu 16.04 64Bits.**
<!-- more -->

```bash
sudo apt-get install hfsprogs
## Montar a particao para leitura e escrita:
## Mount the drive with HFS+ read/write permissions:
sudo mkdir -p /media/$USER/Mac_HDD
sudo mount -t hfsplus -o force,rw /dev/sdXY /media/$USER/Mac_HDD
```


## Links

  * http://askubuntu.com/questions/332315/how-to-read-and-write-hfs-journaled-external-hdd-in-ubuntu-without-access-to-os
  * https://help.ubuntu.com/community/hfsplus
  * http://superuser.com/questions/84446/how-to-mount-a-hfs-partition-in-ubuntu-as-read-write



{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}