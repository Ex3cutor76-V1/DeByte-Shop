#!/usr/bin/env bash

set -e

# Cores
VERMELHO=$'\033[31m'
VERDE=$'\033[32m'
AMARELO=$'\033[33m'
RESET=$'\033[0m'

# Diretório onde está o install.sh
DIRETORIO_SCRIPT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Verificação root

if [[ "$EUID" -ne 0 ]]; then

    printf "${VERMELHO}Execute como root.${RESET}\n"
    printf "Use: sudo ./install.sh\n"

    exit 1

fi

# Teste de existência do arquivo
printf "${AMARELO}Testando arquivo...${RESET}\n"

if [[ -f dbs ]]; then
printf "${VERDE}Arquivo encontrado!${RESET}\n"
else
printf "${VERMELHO}Arquivo não encontrado${RESET}\n"
fi

# Após o teste, coloca o arquivo "dbs" em /usr/local/bin/
printf "${AMARELO}Organizando o arquivo...${RESET}\n"

cp -v dbs /usr/local/bin/

ls -lh /usr/local/bin/dbs
printf "${VERDE}Instalação do DBS concluída!${RESET}\n"

# Remove a pasta de instalação
printf "${AMARELO}Limpando arquivos de instalação...${RESET}\n"

rm -rf -- "$DIRETORIO_SCRIPT"

printf "${VERDE}Arquivos de instalação removidos!${RESET}\n"
