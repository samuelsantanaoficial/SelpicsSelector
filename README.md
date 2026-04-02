# Selpics Selector

Script para **Linux** que separa automaticamente as fotos selecionadas pelo site [Selpics](https://selpics.youfocus.com.br/selecao/).

## ✅ Funcionalidade

Este script lê o arquivo de seleção `.selpics` exportado pelo site e copia para uma nova pasta apenas as fotos escolhidas.

## 📁 Como usar

1. **Baixe o script [selpics.sh](https://github.com/samuelsantanaoficial/SelpicsSelector/releases/latest/download/selpics.sh)**.

2. Abra o terminal dentro da pasta onde você baixou o script e mova o script para a pasta `/usr/local/bin/`.

```bash
cd ~/Downloads/
```

```bash
sudo mv selpics.sh /usr/local/bin/selpics
```

3. Dê permissão de execução ao script _(uma única vez)_.
```bash
chmod +x /usr/local/bin/selpics
```

4. Acesse o site [Selpics](https://selpics.youfocus.com.br/selecao/) e, após finalizar a seleção, clique em **“Baixar seleção”** para obter o arquivo `.selpics`.

<img width="319" height="302" alt="image" src="https://github.com/user-attachments/assets/6df1eb23-5fbb-4045-93a3-6e31deceb7eb" />

5. Execute o script no terminal com o nome do arquivo de seleção:

```bash
cd ~/Documentos/DCIM/
```

```bash
selpics 'nome do arquivo.selpics'
```

> ⚠️ Observações:
>
> * Substitua `'nome do arquivo.selpics'` pelo nome real do seu arquivo.
> * As aspas simples são **obrigatórias** apenas se o nome tiver espaços.
> * O terminal deve esta na mesma pasta com as fotos e o arquivo de seleção.
> * O script precisa que o `zip` esteja instalado: `sudo apt install zip` ou `sudo pacman -S zip`.

6. O script criará um zip contendo apenas as fotos selecionadas.
