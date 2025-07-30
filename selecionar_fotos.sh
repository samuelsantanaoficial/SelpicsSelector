#!/bin/bash

# Verifica se o arquivo de texto foi passado como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <arquivo_de_nomes.txt>"
    exit 1
fi

# Define variáveis
arquivo_txt="$1"
pasta_destino="selecionadas"

# Verifica se o arquivo .txt existe
if [ ! -f "$arquivo_txt" ]; then
    echo "Erro: O arquivo $arquivo_txt não foi encontrado."
    exit 1
fi

# Cria a pasta "selecionadas" caso não exista
mkdir -p "$pasta_destino"

# Processa cada linha do arquivo .txt
while IFS= read -r nome_foto || [[ -n "$nome_foto" ]]; do
    if [ -f "$nome_foto" ]; then
        cp "$nome_foto" "$pasta_destino/"
        echo "Copiando: $nome_foto para $pasta_destino/"
    else
        echo "Aviso: Arquivo $nome_foto não encontrado, ignorando."
    fi
done < "$arquivo_txt"

echo "Processo concluído. Verifique a pasta '$pasta_destino'."

