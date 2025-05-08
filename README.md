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

- [rcm](https://github.com/thoughtbot/rcm) - A management suite for dotfiles
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
5. Links dotfiles to your home directory using rcm
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

1. Modifying the dotfiles in your home directory
2. Adding new configurations to the repository and re-running `rcup`
3. Editing the Brewfile to add or remove packages

To update your dotfiles after making changes to the repository:

```sh
rcup
```

To update installed packages:

```sh
brew bundle --file=~/dotfiles/Brewfile
```
