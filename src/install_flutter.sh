#!/bin/bash
set -e

echo "📦 Instalando dependências do sistema..."
sudo apt update
sudo apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-17-jdk adb clang libgtk-3-dev zsh

echo "📁 Baixando Flutter SDK..."
cd ~
if [ ! -d "$HOME/flutter" ]; then
  curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.1-stable.tar.xz
  tar xf flutter_linux_3.22.1-stable.tar.xz
  rm flutter_linux_3.22.1-stable.tar.xz
else
  echo "Flutter já está extraído em ~/flutter. Pulando extração..."
fi

echo "🔧 Configurando PATH do Flutter..."
FLUTTER_BLOCK=$(cat <<EOF
# >>> FLUTTER SETUP >>>
export PATH="\$HOME/flutter/bin:\$PATH"
# <<< FLUTTER SETUP <<<
EOF
)

for shellrc in ~/.bashrc ~/.zshrc; do
  sed -i '/# >>> FLUTTER SETUP >>>/,/# <<< FLUTTER SETUP <<</d' "$shellrc"
  echo "$FLUTTER_BLOCK" >> "$shellrc"
done
export PATH="$HOME/flutter/bin:$PATH"

echo "📲 Instalando Android SDK (cmdline-tools)..."
ANDROID_DIR="$HOME/Android"
if [ ! -d "$ANDROID_DIR/cmdline-tools/latest" ]; then
  mkdir -p "$ANDROID_DIR/cmdline-tools"
  cd "$ANDROID_DIR"
  curl -O https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
  unzip -q commandlinetools-linux-11076708_latest.zip -d cmdline-tools
  mv cmdline-tools/cmdline-tools cmdline-tools/latest
  rm commandlinetools-linux-11076708_latest.zip
else
  echo "Android cmdline-tools já instalado. Pulando download..."
fi

echo "🛠️ Configurando variáveis do Android SDK..."
ANDROID_BLOCK=$(cat <<EOF
# >>> ANDROID SETUP >>>
export ANDROID_HOME="\$HOME/Android"
export PATH="\$ANDROID_HOME/cmdline-tools/latest/bin:\$ANDROID_HOME/platform-tools:\$PATH"
# <<< ANDROID SETUP <<<
EOF
)

for shellrc in ~/.bashrc ~/.zshrc; do
  sed -i '/# >>> ANDROID SETUP >>>/,/# <<< ANDROID SETUP <<</d' "$shellrc"
  echo "$ANDROID_BLOCK" >> "$shellrc"
done

export ANDROID_HOME="$HOME/Android"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"

echo "📦 Instalando pacotes do Android SDK..."
yes | sdkmanager --licenses > /dev/null
sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

echo "🔍 Rodando flutter doctor..."
flutter doctor

echo "✅ Instalação do Flutter finalizada com sucesso!"
