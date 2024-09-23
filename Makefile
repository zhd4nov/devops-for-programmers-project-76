### Ansible
webservers_private_vars_path=group_vars/webservers/private.yml

ans-deps:
	@ansible-galaxy install -r requirements.yml

ans-play: ans-deps
	@ansible-playbook playbook.yml

ans-decrypt:
	@ansible-vault decrypt ${webservers_private_vars_path}

ans-encrypt:
	@ansible-vault encrypt ${webservers_private_vars_path}