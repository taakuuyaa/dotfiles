# 🏠 Dotfiles

A collection of personal dotfiles and configuration settings to quickly set up a consistent development environment across different machines.

## 📋 Table of Contents

- [Overview](#overview)
- [What's Included](#whats-included)
- [Requirements](#requirements)
- [Installation](#installation)
- [What Happens During Installation](#what-happens-during-installation)
- [Included Configurations](#included-configurations)
- [Customization](#customization)

## 🔍 Overview

This repository contains dotfiles managed by the following tools:

- [chezmoi](https://www.chezmoi.io/) - Manage your dotfiles across multiple machines
- [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) - Bundler for non-Ruby dependencies from Homebrew
- [mise](https://github.com/jdx/mise) - Dev tools, environment variables, tasks (replacing asdf)

## 📦 What's Included

### Core Tools
- Git configuration
- Zsh configuration
- Vim configuration
- Karabiner Elements configuration

### Package Management
- Homebrew packages (CLI tools, applications)
- Mise for version management

## ⚙️ Requirements

- macOS (some components are macOS specific)
- Internet connection for downloading packages

## 🚀 Installation

### One-Line Installation (Recommended)

```sh
curl -o - https://raw.githubusercontent.com/taakuuyaa/dotfiles/master/install | sh
```

This will:
1. Install Command Line Tools, Homebrew, and required dependencies
2. Clone this repository to `~/dotfiles`
3. Install all packages from Brewfile
4. Set up chezmoi and apply dotfiles

### Manual Installation

If you prefer to install step by step:

1. Clone the repository:
   ```sh
   git clone https://github.com/taakuuyaa/dotfiles.git ~/dotfiles
   ```

2. Run the install script:
   ```sh
   cd ~/dotfiles
   ./install
   ```

3. After the install script completes, apply dotfiles with chezmoi:
   ```sh
   chezmoi init --source=~/dotfiles
   chezmoi apply -v
   ```

## 🔄 What Happens During Installation

The `install` script performs the following actions:

1. Installs Command Line Tools (if not already installed)
2. Installs Rosetta 2 on Apple Silicon Macs (if needed)
3. Clones this dotfiles repository to `~/dotfiles` (if not already present)
4. Installs Homebrew (if not already installed)
5. Updates Homebrew and runs `brew doctor`
6. Installs packages defined in the Brewfile, including:
   - CLI tools like git, jq, curl, etc.
   - Applications like Google Chrome, Slack, Docker, etc.

After running the install script, use chezmoi to apply dotfiles to your home directory.

## ⚙️ Included Configurations

### Homebrew Packages

The Brewfile includes various useful tools and applications:

- **CLI Tools**: git, jq, bat, eza, peco, and more
- **Development Tools**: Docker, JetBrains Toolbox, Postman
- **Applications**: Google Chrome, Slack, Zoom, Arc, and more
- **Utilities**: Karabiner Elements, Raycast, AppCleaner, and more

### Dotfiles

- `.zshrc` and `.zprofile` - Zsh shell configuration
- `.vimrc` - Vim editor configuration
- `.gitconfig` and `.gitignore` - Git configuration
- `.asdfrc` - Configuration for version management

## 🛠️ Customization

### Managing Dotfiles with chezmoi

Edit dotfiles in the source directory:

```sh
chezmoi edit ~/.zshrc
```

Add new dotfiles:

```sh
chezmoi add ~/.config/newfile
```

Apply changes:

```sh
chezmoi apply -v
```

Update from the repository:

```sh
chezmoi update -v
```

View differences:

```sh
chezmoi diff
```

### Update Homebrew Packages

```sh
brew bundle --file=~/dotfiles/dot_Brewfile
```

## 📚 Additional Resources

- [chezmoi Documentation](https://www.chezmoi.io/user-guide/command-overview/)
- [chezmoi Quick Start](https://www.chezmoi.io/quick-start/)
