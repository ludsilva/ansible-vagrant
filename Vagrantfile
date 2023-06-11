Vagrant.configure("2") do |config|
  # Configurando a VM Ubuntu
  config.vm.hostname = "ubuntu"
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "forwarded_port", guest:80, host:8080

  # Definir CPU e RAM
  config.vm.provider "virtualbox" do |v|
	  v.memory = 2048
	  v.cpus = 2
    v.gui = false
  end
 
  # Sincronizando a pasta do playbook e as roles do Ansible
  config.vm.synced_folder "./ansible", "/ansible"

  # Rodar o shell script
  config.vm.provision "shell", path: "script.sh"

  # Instalar o Ansible e executar
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end

end