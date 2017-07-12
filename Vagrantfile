# -*- mode: ruby -*-
# vi: set ft=ruby :
#

HOST_NAME = "archivesspace"

Vagrant.configure(2) do |config|
  # Disable insecure key replacement
  config.ssh.insert_key = false
  # Use your id_rsa key from !/.ssh
  config.ssh.private_key_path = [ '~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa' ]
  config.vm.box = "NYULibraries/archivesspace_1.5.2"
  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    #vb.memory = "2048"
  end
  #config.vm.network "private_network", type: "dhcp",
  config.vm.network "private_network", ip: "192.168.50.39",
      virtualbox__hostonly: true
  config.vm.network "forwarded_port", guest:  8080, host: 8080,
    auto_correct: true
  config.vm.network "forwarded_port", guest:  8081, host: 8081,
    auto_correct: true
  config.vm.network "forwarded_port", guest:  8089, host: 8089,
    auto_correct: true
  config.vm.network "forwarded_port", guest:  8090, host: 8090,
    auto_correct: true
  config.vm.hostname = HOST_NAME + ".local"
  #config.vm.synced_folder "./", "/vagrant", disabled: true
  #config.vm.synced_folder "./", "/vagrant-" + HOST_NAME, id: "vagrant-" + HOST_NAME

end
