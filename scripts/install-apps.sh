#!/usr/bin/env bash

# Script para auxiliar na instalação de apps que não estão no Nixpkgs principal
# ou que requerem métodos específicos (Flatpak/AppImage)

echo "🚀 Iniciando configuração de aplicativos extras..."

# 1. Helium Browser (Geralmente via AppImage ou binário direto)
echo "🌐 Configurando Helium Browser..."
mkdir -p ~/Apps/Helium
# Nota: O usuário deve baixar o binário e colocar nesta pasta, ou podemos automatizar via curl se houver URL estável
cat <<EOF > ~/Apps/Helium/helium-launcher.sh
#!/usr/bin/env bash
# Launcher para o Helium
~/Apps/Helium/Helium --no-sandbox
EOF
chmod +x ~/Apps/Helium/helium-launcher.sh

# 2. SKLauncher (Minecraft)
echo "🎮 Configurando SKLauncher..."
mkdir -p ~/Apps/SKLauncher
# O SKLauncher é um JAR
cat <<EOF > ~/Apps/SKLauncher/sklauncher.sh
#!/usr/bin/env bash
java -jar ~/Apps/SKLauncher/SKLauncher.jar
EOF
chmod +x ~/Apps/SKLauncher/sklauncher.sh

# 3. Hydra Launcher (Flatpak é o método recomendado no NixOS para ele)
echo "🐉 Configurando Hydra Launcher via Flatpak..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install flathub org.hydralauncher.Hydra -y

echo "✅ Scripts de auxílio criados em ~/Apps"
echo "Lembre-se de colocar os arquivos correspondentes (Helium e SKLauncher.jar) nas pastas criadas."
