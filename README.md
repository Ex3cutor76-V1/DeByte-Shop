# DeByte-Shop
DeByte Shop é um gerenciador de componentes da distro [DeByte Linux](https://github.com/Ex3cutor76-V1/DeByte-Linux), com o objetivo simples de instalar diretamente no sistema, componentes do DeByte Linux, além de também permitir instalar ferramentas da própria comunidade que podem aparecer no DeByte Shop através de um evento chamado "The Hardware Invited You", que ainda por enquanto não foi liberado.

## DeByte Shop não substitui o APT!!!
O software DeByte Shop não possui como objetivo de forma alguma substituir o gerenciador de pacotes APT, uma vez que o apt é um componente importante do Debian, e como dito na documentação de DeByte Linux. O mesmo é **baseado em Debian Trixie.**

## Funcionalidades
O DeByte Shop é capaz de:

* Instalar componentes do DeByte;
* Instalar ferramentas da comunidade (Ainda não existe nada);
* Mostrar informações sobre os softwares dos componentes do DeByte;
* Atualizar o DBS;
* Remover softwares;
* Sair;

No caso o DBS é um script interativo, logo o menu mostrará isto.

## Como o DBS instala os componentes?

No DBS, **as instalações funcionam com git clone do repositório dos projetos** que após isso irá executar o script `install.sh` dos projetos (Que normalmente os componentes do DeByte possuem), entretanto, a forma como irá funcionar para ferramentas da comunidade irá funcionar de forma diferente dependendo do modo de instalação de cada ferramenta que a comunidade criar (Por exemplo: Se caso uma ferramenta for instalada de forma manual, só será instalado as dependências e o script principal, se caso a ferramenta tiver um script de instalação automática, o DBS irá executar exatamente esse script).

## Uso
```bash
sudo dbs
``` 

## Requisitos do DBS

* perl;
* git;
