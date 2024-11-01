run:
    @echo "Running ansible"
    ansible-playbook playbooks/main.yml

play:
    @echo "Running playbook"
    ansible-playbook playbooks/install_brew_packages.yml