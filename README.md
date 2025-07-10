# Flutter Install Script

<p align="center">
  <img src="img/flutter_logo.png" alt="Flutter Logo" width="200"/>
</p>

<p align="center">
  <strong>English</strong> | <a href="#-português-brasil">Português (Brasil)</a>
</p>

---

## 🚀 Description

This script simplifies the process of setting up a Flutter development environment on Debian-based Linux distributions (like Ubuntu, Mint, etc.). It automatically installs Flutter, the Android SDK, necessary system dependencies, and configures environment variables.

## ✨ What does the script do?

- ✅ **Installs system dependencies:** Installs packages like `git`, `curl`, `unzip`, `openjdk-17-jdk`, and others via `apt`.
- ✅ **Downloads Flutter SDK:** Downloads the latest stable version of Flutter and extracts it to the `~/flutter` directory.
- ✅ **Downloads Android SDK:** Downloads the Android SDK command-line tools and sets them up in `~/Android`.
- ✅ **Configures the Environment:** Adds Flutter and Android tools to the `PATH` in `~/.bashrc` and `~/.zshrc` files.
- ✅ **Installs Android Packages:** Uses `sdkmanager` to install `platform-tools`, `platforms;android-34`, and `build-tools;34.0.0`.
- ✅ **Accepts Licenses:** Automatically accepts Android SDK licenses to avoid manual prompts.
- ✅ **Verifies Installation:** Runs `flutter doctor` at the end of the process to validate the setup.

## 📋 Prerequisites

- A Debian-based Linux distribution (Ubuntu, Debian, Linux Mint, etc.).
- `sudo` access to install system packages.

## ⚡ How to Run

You can run the script directly from GitHub with a single command.

> **Warning:** Running scripts directly from the internet requires trust in the source. It's recommended to review the code before proceeding.

```bash
bash <(curl -sSL https://raw.githubusercontent.com/adfastltda/flutter-install-linux/main/src/install_flutter.sh)
```

### Alternative: Local Execution

```bash
# 1. Clone the repository
git clone https://github.com/adfastltda/flutter-install-linux.git

# 2. Navigate to the directory and grant execution permission
cd flutter_install/src
chmod +x install_flutter.sh

# 3. Run the script
./install_flutter.sh
```

## 🛠️ Post-installation

After the script finishes, **restart your terminal** or run `source ~/.bashrc` (or `source ~/.zshrc`) for the new environment variables to be loaded into your current session. 

---

## 🇧🇷 Português (Brasil)

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
bash <(curl -sSL https://raw.githubusercontent.com/adfastltda/flutter-install-linux/main/src/install_flutter.sh)

### Alternativa: Execução Local
# 1. Clone o repositório
git clone https://github.com/adfastltda/flutter-install-linux.git   

# 2. Vá para o diretório e dê permissão de execução
cd flutter-install-linux/src
chmod +x install_flutter.sh

# 3. Execute o script
./install_flutter.sh
```
## 🛠️ Post-installation

Após o término da instalação, **reinicie o terminal** ou execute `source ~/.bashrc` (ou `source ~/.zshrc`) fpara carregar as novas variáveis de ambiente na sessão atual.