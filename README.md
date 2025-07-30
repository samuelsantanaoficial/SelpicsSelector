# Selpics Selector

Script para **Linux** que separa automaticamente as fotos selecionadas pelo site [Selpics](https://selpics.youfocus.com.br/selecao/).

## ✅ Funcionalidade

Este script lê o arquivo de seleção `.selpics` exportado pelo site e copia para uma nova pasta apenas as fotos escolhidas.

## 📁 Como usar

1. **Baixe o script <a href=https://raw.githubusercontent.com/samuelsantanaoficial/SelpicsSelector/main/selpics.sh download>selpics.sh</a>** e mova para a pasta onde estão todas as fotos originais.

2. Acesse o site [Selpics](https://selpics.youfocus.com.br/selecao/) e, após finalizar a seleção, clique em **“Baixar seleção”** para obter o arquivo `.selpics`.

<img width="319" height="302" alt="image" src="https://github.com/user-attachments/assets/6df1eb23-5fbb-4045-93a3-6e31deceb7eb" />

3. Mova esse arquivo `.selpics` para a mesma pasta das fotos e do script.

4. Execute o script no terminal com o nome do arquivo de seleção:

```bash
./selpics.sh 'nome do arquivo.selpics'
```

> ⚠️ Observações:
>
> * Substitua `'nome do arquivo.selpics'` pelo nome real do seu arquivo.
> * As aspas simples são **obrigatórias** apenas se o nome tiver espaços.

5. O script criará uma nova pasta contendo apenas as fotos selecionadas.

## 📂 Resultado

Após a execução, será criada uma pasta com o nome baseado no arquivo `.selpics`, contendo somente os arquivos de imagem selecionados.
