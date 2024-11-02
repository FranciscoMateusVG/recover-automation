run:
    @echo "Running ansible"
    ansible-playbook playbooks/main.yml

play playbook="install_oh_my_zsh.yml": 
    @echo "Running playbook {{playbook}}"
    ansible-playbook playbooks/{{playbook}}
