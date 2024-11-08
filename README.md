# Mac Development Environment Setup

This repository contains automated scripts to set up a complete development environment on macOS using Ansible and Just command runner.

## 🚀 Quick Start

- Clone this repository
- Run the setup script:

  ```bash
  /main.sh
  ```

## 🛠 What Gets Installed

### Core Tools

- Git
- Homebrew
- Oh My Zsh (with plugins)
- Just Command Runner
- Direnv
- PNPM

### Programming Languages & Tools

- Node.js (via Volta)
- Deno
- Rust

### Oh My Zsh Plugins

- zsh-z (directory jumping)
- zsh-autosuggestions
- zsh-syntax-highlighting
- zsh-you-should-use
- zsh-bat

### macOS Applications

- Dashlane
- Microsoft Office Suite (Word, Excel, PowerPoint)
- CopyClip
- Spark
- Todoist
- Xcode
- iScreen Shoter
- Slack

## 📋 Playbooks

The setup is organized into several Ansible playbooks:

- main.yml - Orchestrates all other playbooks
- install_git.yml - Git installation
- install_brew_packages.yml - Core brew packages
- install_oh_my_zsh.yml - Zsh setup and plugins
- install_just.yml - Just command runner
- install_languages.yml - Programming languages
- install_mac_apps.yml - macOS applications

## 🔧 Using Just Commands

You can run individual playbooks using Just:

```bash
just play playbook=install_oh_my_zsh.yml
```

To run all playbooks:

```bash
just run-all
```

## 📝 Requirements

- macOS
- Internet connection
- Logged on on Mac App Store for installations

## ⚙️ Post-Installation

After installation:

- Restart your terminal
- Run exec zsh to activate Oh My Zsh changes
- Sign in to the Mac App Store before running the playbooks

## 🤝 Contributing

Feel free to submit issues and enhancement requests!
