#!/bin/bash

# Verifica se o arquivo de texto foi passado como argumento
if [ $# -ne 1 ]; then
    echo "Uso: selpics <arquivo_de_nomes.selpics>"
    exit 1
fi

# --- CORREÇÃO: Definir a variável arquivo_txt PRIMEIRO ---
arquivo_txt="$1"

# Verifica se o arquivo existe (boa prática verificar logo no início)
if [ ! -f "$arquivo_txt" ]; then
    echo "Erro: O arquivo $arquivo_txt não foi encontrado."
    exit 1
fi

# 1. Pega apenas o nome do arquivo (remove caminhos como ../ se houver)
nome_base=$(basename "$arquivo_txt")

# 2. Remove a extensão (tudo depois do último ponto)
nome_sem_extensao="${nome_base%.*}"

# Define a pasta de destino com o nome do arquivo (sem extensão)
pasta_destino="${nome_sem_extensao}"

# Cria a pasta caso não exista
mkdir -p "$pasta_destino"

# Processa cada linha do arquivo
echo "Lendo arquivo: $arquivo_txt"
echo "Destino: $pasta_destino/"

while IFS= read -r nome_foto || [[ -n "$nome_foto" ]]; do
    # Remove quebra de linha do Windows (\r) para evitar erros
    nome_foto=$(echo "$nome_foto" | tr -d '\r')

    if [ -f "$nome_foto" ]; then
        cp "$nome_foto" "$pasta_destino/"
    else
        if [ ! -z "$nome_foto" ]; then
            echo "Aviso: Arquivo '$nome_foto' não encontrado."
        fi
    fi
done < "$arquivo_txt"

# --- LÓGICA DO ZIP ---

# 3. Define o nome do zip igual ao nome da pasta/arquivo de seleção
nome_zip="${nome_sem_extensao}.zip"

echo "------------------------------------------------"
echo "Compactando para: $nome_zip"

if command -v zip &> /dev/null; then
    # Cria o zip com o conteúdo da pasta
    zip -r "$nome_zip" "$pasta_destino"

    echo "------------------------------------------------"
    echo "Concluído! Zip criado: $nome_zip"
else
    echo "Erro: Comando 'zip' não encontrado. As fotos estão na pasta '$pasta_destino'."
fi
