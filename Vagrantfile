# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure(2) do |config|
  # Disable insecure key replacement
  config.ssh.insert_key = false
  #config.vm.box = "flannon/centos_7_min"
  config.vm.box = "flannon/centos_6.7_min"
  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    #vb.memory = "2048"
  end
  config.vm.network "forwarded_port", guest:  3306, host: 3306
  config.vm.network "forwarded_port", guest:  8080, host: 8180
  config.vm.network "forwarded_port", guest:  8081, host: 8181
  config.vm.network "forwarded_port", guest:  8089, host: 8189
  config.vm.network "forwarded_port", guest:  8090, host: 8190
  config.vm.network "forwarded_port", guest:  8091, host: 8191
  config.vm.hostname = "archivesspace.local"
  config.vm.provision "shell", path: "bin/init-puppet-centos6.sh"
  #config.vm.provision "shell", path: "bin/init-libs.sh"
  config.vm.provision "shell", path: "bin/load-mpapis-sig.sh"

  config.librarian_puppet.puppetfile_dir = "puppet"
  # placeholder_filename defaults to .PLACEHOLDER
  config.librarian_puppet.placeholder_filename = ".MYPLACEHOLDER"
  config.librarian_puppet.use_v1_api = '1' 
  config.librarian_puppet.destructive = false 

  config.vm.provision "puppet" do |puppet|
      #puppet.module_path = [ 'puppet/modules', 'puppet/modules-local' ]
      puppet.module_path = [ 'puppet/modules' ]
      puppet.manifests_path = "puppet/manifests"
      puppet.hiera_config_path = "puppet/hiera.yaml"
      puppet.working_directory = "/tmp/vagrant-puppet"
      #puppet.manifest_file = "hiera.pp"
      #puppet.manifest_file = "init-firewall.pp"
      #puppet.manifest_file = "housekeeping.pp"
      puppet.manifest_file = "default.pp"
      #puppet.manifest_file = "archivesspace.pp"
      #puppet.manifest_file = "vim.pp"
  end
  config.vm.provision "shell", path: "bin/update-git.sh"
  config.vm.provision "shell", path: "bin/load-asdb.sh"


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false


  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gu true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
