# Flutter Install Script

<p align="center">
  <img src="img/flutter_logo.png" alt="Flutter Logo" width="200"/>
</p>

## 🚀 Descrição

Este script simplifica o processo de configuração de um ambiente de desenvolvimento Flutter em distribuições Linux baseadas no Debian (como Ubuntu, Mint, etc.). Ele instala automaticamente o Flutter, o SDK do Android, as dependências do sistema e configura as variáveis de ambiente.

## ✨ O que o script faz?

- ✅ **Instala dependências do sistema:** Como `git`, `curl`, `unzip`, `openjdk-17-jdk`, e outras via `apt`.
- ✅ **Baixa o Flutter SDK:** Faz o download da versão estável mais recente do Flutter e extrai para `~/flutter`.
- ✅ **Baixa o SDK do Android:** Baixa e configura as ferramentas de linha de comando em `~/Android`.
- ✅ **Configura o ambiente:** Adiciona o Flutter e as ferramentas do Android ao `PATH` nos arquivos `~/.bashrc` e `~/.zshrc`.
- ✅ **Instala pacotes do Android SDK:** Usa `sdkmanager` para instalar `platform-tools`, `platforms;android-34` e `build-tools;34.0.0`.
- ✅ **Aceita licenças automaticamente:** Para evitar prompts manuais.
- ✅ **Verifica a instalação:** Executa `flutter doctor` no final para validar a configuração.

## 📋 Pré-requisitos

- Uma distribuição Linux baseada em Debian (Ubuntu, Debian, Linux Mint, etc.).
- Acesso `sudo` para instalar pacotes do sistema.

## ⚡ Como executar

Você pode rodar o script diretamente do GitHub com um único comando:

> ⚠️ **Aviso:** Executar scripts diretamente da internet requer confiança na fonte. Recomenda-se revisar o código antes.

```bash
bash <(curl -sSL https://raw.githubusercontent.com/adfastltda/flutter-install-linux/main/src/install_flutter.sh) && source ~/.bashrc
````

### Alternativa: Execução Local
# 1. Clone o repositório
```bash
git clone https://github.com/adfastltda/flutter-install-linux.git   
````

# 2. Vá para o diretório e dê permissão de execução
```bash
cd flutter-install-linux/src
chmod +x install_flutter.sh
````

# 3. Execute o script
```bash
./install_flutter.sh
```
## 🛠️ Post-installation

Após o término da instalação, **reinicie o terminal** ou execute `source ~/.bashrc` (ou `source ~/.zshrc`) fpara carregar as novas variáveis de ambiente na sessão atual.


##### ☕ Buy Me a Coffee

Se você gosta deste projeto e quer apoiar o desenvolvimento, pode contribuir com um café!  

**PIX:** `pix@adfastltda.com.br`
**PayPal:** [Doar](https://www.paypal.com/ncp/payment/TSLA567NR39LA) 

Toda ajuda e sugestoes é bem-vinda e motivadora!  

Obrigado pelo apoio! 🙏
