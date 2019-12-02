---
title: Install Hexo on Ubuntu
categories:
- Linux
- Ubuntu
- Debian
- Hexo
date: 2017-04-16 15:01:03
tags: 
- howto
- linux
- ubuntu
- hexo
---

![](/images/Install_Hexo_Ubuntu.png)


Olá, bem vindo ao meu novo Blog feito com Hexo! Esse é o primeiro Post. Veja a documentação de como funciona o Hexo.
Nesse Screencast vou descrever como coloquei o Hexo para funcionar no Ubuntu 16.04 e no Mac OSX.
Iniciamente vou falar como instala o NodeJS e o Hexo no Ubuntu.
<!-- more -->

Depois vou fazer o mesmo procedimento no Mac, lembrando que para você publicar um site estático no GitHub você precisa ter uma conta e instalar na sua máquina o software git.
Lembrando que os procedimentos abaixo devem ser feitos via linha de comando (terminal), executei os passos no Ubuntu 16.04 64 Bits, mas pode ser feito em qualquer distro com Base Debian e para Distros com pacotes RPMs devem ser feitas poucas alterações.

{% youtube Ii4le3TJqTw %}


## Install Hexo on Ubuntu 16.04+

Para ajudar na instalacao do NodeJS no Ubuntu vou utilizar o NVM.
O nvm(Node Version Manager) é um script que gerencia diferentes versões do NodeJS.
Para saber mais sobre o NVM veja esse link.

```bash
sudo apt-get install build-essential git-core wget curl
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.bashrc
nvm install node
npm install hexo-cli -g
```


### Create a blog
```bash
$ hexo init blog
$ cd blog
$ npm install
```

### Create a new post
```bash
$ hexo new "My New Post"
```

### Run server
```bash
$ hexo server
```


## Links

  * https://github.com/creationix/nvm#install-script
  * https://hexo.io/
  * https://hexo.io/docs/
  * https://ericdouglas.github.io/2016/08/21/how-to-create-a-blog-with-hexo/


{% blockquote %}
Chegamos ao fim do artigo, achou o que estava procurando?
Faltou alguma informação?
Alguma parte ficou mal redigida?
Posso melhorar o artigo de alguma forma? Deixe seu feedback, é muito importante!
{% endblockquote %}