# ❄️ Guuh's NixOS Configuration

<div align="center">
  <img src="https://img.shields.io/badge/NixOS-24.11-blue.svg?style=for-the-badge&logo=nixos&logoColor=white" />
  <img src="https://img.shields.io/badge/Desktop-GNOME%20(Hypr--Style)-orange.svg?style=for-the-badge&logo=gnome&logoColor=white" />
  <img src="https://img.shields.io/badge/Hardware-AMD%20Ryzen%20%2B%20Radeon-red.svg?style=for-the-badge&logo=amd&logoColor=white" />
</div>

---

## 🚀 Visão Geral

Esta é a minha configuração pessoal do **NixOS**, construída com uma arquitetura modular inspirada em referências como [ryan4yin](https://github.com/ryan4yin/nix-config) e [gvolpe](https://github.com/gvolpe/nix-config). O objetivo é unir a estabilidade e reprodutibilidade do Nix com uma interface visualmente impactante e um workflow de alta performance para desenvolvimento e jogos.

### 🎨 Interface Visual (Hypr-Gnome)
O sistema utiliza o **GNOME 47** customizado para se comportar como um *Tiling Window Manager* (estilo Hyprland), apresentando:
- **Tiling & Gaps**: Gerenciamento automático de janelas via Forge.
- **Glass Dock**: Dock flutuante com efeito de vidro jateado e bordas finas.
- **Blur Everywhere**: Transparências dinâmicas via Blur my Shell.
- **Temas**: Colloid-GTK, Colloid-Icons e Apple-Cursor.

---

## 🏗️ Arquitetura do Repositório

O projeto segue uma estrutura de **Módulos Atômicos**, facilitando a manutenção e escalabilidade:

```text
.
├── flake.nix               # Orquestrador principal e gestão de inputs
├── modules
│   ├── system              # Configurações de nível de sistema (Root)
│   │   ├── hardware.nix    # Otimizações para Ryzen 5600GT & RX 6600
│   │   ├── gnome.nix       # Core da interface e extensões
│   │   └── games.nix       # Steam, Hydra e otimizações de kernel
│   └── home                # Configurações de usuário (Home Manager)
│       ├── apps            # Discord, Spotify, Browsers
│       ├── dev-tools       # VSCode, Cursor, Claude, Linguagens
│       ├── shell           # Kitty, Fish, Starship
│       └── tui             # Neovim (Ryan4yin Style), Zellij
└── scripts                 # Automações (Wallpaper Changer, Launchers)
```

---

## 💻 Especificações de Hardware

| Componente | Modelo |
| :--- | :--- |
| **CPU** | AMD Ryzen 5 5600GT (Zen 3) |
| **GPU** | AMD Radeon RX 6600 Asrock White |
| **RAM** | 16GB Asgard DDR4 |
| **Mobo** | Gigabyte B550M Aorus Elite |
| **OS** | NixOS (Unstable/24.11) |

---

## 🛠️ Stack de Desenvolvimento

O ambiente está pronto para desenvolvimento fullstack e engenharia de software:
- **Linguagens**: Java (JDK 17), Python 3, Node.js 20, TypeScript.
- **Banco de Dados**: MariaDB / MySQL.
- **Editores**: Neovim (Pro Config), VSCode, Cursor, IntelliJ Community.
- **Ferramentas**: Claude-Code, Git, GitHub CLI, Starship Prompt.

---

## 🎮 Gaming & Apps

- **Launchers**: Steam, Hydra Launcher, SKLauncher (Minecraft).
- **Emulação**: mGBA.
- **Social**: Discord, Spotify.
- **Navegação**: Helium Browser (Performance), Google Chrome.
- **Produtividade**: LibreOffice, Figma.

---

## 📥 Instalação

> [!WARNING]  
> Não aplique esta configuração sem revisar o arquivo `hardware-configuration.nix` para o seu sistema.

1. **Clonar o repositório**:
   ```bash
   git clone https://github.com/guuhmartins/nix-config.git ~/nix-config
   cd ~/nix-config
   ```

2. **Gerar hardware real**:
   ```bash
   sudo nixos-generate-config --show-config > modules/system/hardware-configuration.nix
   ```

3. **Aplicar sistema**:
   ```bash
   sudo nixos-rebuild switch --flake .#nixos --impure
   ```

4. **Aplicar Home Manager**:
   ```bash
   nix run github:nix-community/home-manager -- switch --flake .#guuh --impure
   ```

---

<div align="center">
  Criado com ❤️ por <a href="https://github.com/guuhmartins">Guuh Martins</a>
</div>
