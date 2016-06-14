# -*- mode: ruby -*-
# vi: set ft=ruby :
#

HOST_NAME = "archivesspace"

Vagrant.configure(2) do |config|
  # Disable insecure key replacement
  config.ssh.insert_key = false
  # Use your id_rsa key from !/.ssh
  config.ssh.private_key_path = [ '~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa' ]
  config.vm.box = "flannon/centos_6.7_min"
  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    #vb.memory = "2048"
  end
  #config.vm.network "private_network", type: "dhcp",
  config.vm.network "private_network", ip: "192.168.90.80",
      virtualbox__hostonly: true
  config.vm.network "forwarded_port", guest:  8080, host: 9080,
    auto_correct: true
  config.vm.hostname = HOST_NAME + ".local"
  #config.vm.synced_folder "./", "/vagrant", disabled: true
  #config.vm.synced_folder "./", "/vagrant-" + HOST_NAME, id: "vagrant-" + HOST_NAME
  config.vm.provision "shell", path: "bin/init-puppet-centos6.sh"
  config.vm.provision "shell", path: "bin/load-mpapis-sig.sh"

  config.r10k.puppet_dir = "puppet"
  config.r10k.puppetfile_path = "puppet/Puppetfile"
  config.r10k.module_path = "puppet/modules/thirdparty"

  config.vm.provision "puppet" do |puppet|
      #puppet.module_path = [ 'puppet/modules', 'puppet/modules-local' ]
      #puppet.module_path = [ 'puppet/modules' ]
      #puppet.options = "--verbose --debug"
      puppet.hiera_config_path = "puppet/hiera.yaml"
      puppet.working_directory = "/tmp/vagrant-puppet"
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "default.pp"
      puppet.module_path = ["puppet/modules/thirdparty", "puppet/modules/local", "puppet/modules/sites"]
  end
  #config.vm.provision "shell", path: "bin/load-ssh-keys.sh"
  #config.vm.provision "shell", path: "bin/load-aws-credentials.sh"
  ###config.vm.provision "shell", path: "bin/update-git.sh"

end
