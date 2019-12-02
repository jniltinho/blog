---
title: Integrando o Ubuntu no Active Directory
categories:
- Linux
- Ubuntu
- Samba4
date: 2017-04-06 10:05:03
tags:
- linux
- ubuntu
- ad
- howto
- samba4
---

[![](/images/linux_on_active_directory.jpg)](https://www.youtube.com/watch?v=d6sB2ZuvWKY)

Nesse [vídeo](https://www.youtube.com/watch?v=d6sB2ZuvWKY) que fiz para o [Canal do ODT no Youtube](https://goo.gl/3xQopO), mostro como integrar o Ubuntu 16.04 64Bits no Active Directory da Microsoft.
Dessa forma você consegue autenticar o Ubuntu com os usuários criado no AD. Isso é muito importante para integração do ambiente Microsoft com Linux.
Hoje existem muitas empresas em um processo de migração para a plataforma Linux, mas ainda usam usuários locais ou outro tipo de autenticação como o LDAP. Com esse howto você não vai mais precisar criar usuários locais nos desktop Linux.
Se você ainda não sabe o que é [Active Directory](https://pt.wikipedia.org/wiki/Active_Directory) leia com atenção [esse texto](https://pt.wikipedia.org/wiki/Active_Directory) na [Wikipedia](https://wikipedia.org).
<!-- more -->

## About BeyondTrust

PowerBroker Open is an open source community project sponsored by BeyondTrust Software. The PowerBroker Open project (formerly known as Likewise Open) was launched in December, 2007. Since that time over 100,000 organizations in both the public and private sector have used PowerBroker Open for core Active Directory authentication for Linux, UNIX, and Mac systems by joining them to Active Directory domains.

The first module of the PowerBroker Open project is PowerBroker Identity Services, or PBIS. PBIS is a complete, clean room, ground-up, Windows-compatible implementation based on a modern architecture. We provide a modular, programmatic, solution that pays particular attention to clarity, extensibility and usability. This allows ISVs to easily incorporate our solution. The market reception to PowerBroker Open has been overwhelmingly positive.

![](/images/beyondtrust_logo.png)

PowerBroker Identity Services uses Pluggable Authentication Modules (PAM) and Name Service Switch (NSS). It supports Kerberos, NTLM, and SPNEGO authentication.

PowerBroker Open is available under a GPL/LGPL v2 license or with a commercial license.


  * Item de lista não ordenadaJoins Linux, UNIX, and Mac OS systems to Active Directory in a single step via a GUI tool or from the command line.
  * Authenticates users with a single username and password on Windows and non-Windows systems.
  * Enforces password polices across Windows and non-Windows systems.
  * Caches credentials so if you lose network access or the domain controller is down, you keep working.



O [script](https://gist.github.com/jniltinho/da0ef938ece852f57faa502c788a82a4) usado nesse howto esta no meu [Gist](https://gist.github.com/jniltinho/).

```bash
cd /tmp/
wget https://gist.githubusercontent.com/jniltinho/da0ef938ece852f57faa502c788a82a4/raw/33a63e02e0b330afbfb2f39077885bc85584660d/Ubuntu_Win_Active_Directory_Domain.sh
## Change file
## vi Ubuntu_Win_Active_Directory_Domain.sh
## Next
chmod +x Ubuntu_Win_Active_Directory_Domain.sh
./Ubuntu_Win_Active_Directory_Domain.sh
```

**Não esquece de assinar o Canal do [ODT no Youtube](https://goo.gl/3xQopO) e deixar seu like nos vídeos que você mais gostou.**
Se você tiver alguma duvida use os comentários abaixo desse Blog.



## Links

  * https://github.com/BeyondTrust/pbis-open/releases
  * https://github.com/BeyondTrust/pbis-open/wiki
  * http://askubuntu.com/questions/452904/likewise-open-14-04-other-easy-way-to-connect-ad
  * http://www.kiloroot.com/add-ubuntu-14-04-lts-server-to-a-windows-active-directory-domain-fullest-integration/
  * https://www.youtube.com/watch?v=d6sB2ZuvWKY

{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}
