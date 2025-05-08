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

- [chezmoi](https://github.com/twpayne/chezmoi) - A dotfile manager
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

### One-Line Installation

```sh
curl -o - https://raw.githubusercontent.com/taakuuyaa/dotfiles/master/install | sh
```

### Manual Installation

If you prefer to install step by step:

1. Clone the repository:
   ```sh
   git clone https://github.com/taakuuyaa/dotfiles.git ~/dotfiles
   ```

2. Navigate to the dotfiles directory:
   ```sh
   cd ~/dotfiles
   ```

3. Run the install script:
   ```sh
   ./install
   ```

## 🔄 What Happens During Installation

The installation script performs the following actions:

1. Clones this dotfiles repository to `~/dotfiles` (if not already present)
2. Installs Homebrew (if not already installed)
3. Updates Homebrew and runs `brew doctor`
4. Installs packages defined in the Brewfile, including:
   - CLI tools like git, jq, curl, etc.
   - Applications like Google Chrome, Slack, Docker, etc.
5. Installs chezmoi and applies dotfiles to your home directory
6. Installs Rosetta 2 for compatibility with Google Japanese IME

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

After installation, you can customize your environment by:

1. Using chezmoi to manage your dotfiles:
   ```sh
   # Edit a dotfile
   chezmoi edit ~/.zshrc
   
   # Apply changes
   chezmoi apply
   
   # See what changes would be made
   chezmoi diff
   ```

2. Adding new configurations:
   ```sh
   # Add an existing file to chezmoi
   chezmoi add ~/.some_config_file
   ```

3. Editing the Brewfile to add or remove packages

To update your dotfiles after making changes:

```sh
chezmoi update
```

To update installed packages:

```sh
brew bundle --file=~/dotfiles/Brewfile
```
