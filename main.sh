#!/bin/bash

# Update package lists
if [ "$(uname)" == "Darwin" ]; then
  # macOS installation
  if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  echo "Updating Homebrew..."
  brew update

  echo "Installing Ansible..."
  brew install ansible
else
  echo "This is not a mac"
fi

# Confirm Ansible installation
if command -v ansible &> /dev/null
then
  echo "Ansible installed successfully."
  ansible-playbook playbooks/install_volta_deno.yml
else
  echo "Ansible installation failed."
  exit 1
fi
