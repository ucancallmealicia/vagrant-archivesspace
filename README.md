## vagrant-archivesspace
Vagrant installer for archivesspace

#### Table of Contents

1.  [Overview] (#overview)
2.  [Pre-installation] (#pre-installation)
3.  [Installation] (#installation)
5.  [Usage] (#usage)


#### Overview

Vagrant-archivesspace installs the latest version of Archivesspace.
The Vagrantfile uses puppet and r10k to install archviesspace and mysql
on a VM running Centos 6.7.  Puppet uses hiera for configuration data 
and vagrant-archivesspace can be used to install any verison of 
archivesspace for which an rpm exists.  For a complete lsit of 
avilable options please see the installaiton instructions.


#### Pre-installation setup

To run the vagrant installer you will need Virtualbox, vagrant, and the 
vagrant plugin vagrant-r10k.  If you're on a Mac the easiest way to install everything you'll need is with homebrew.  The following steps will install homebrew and 
everything you need to get vagrant running

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ brew cask install virtualbox
    $ brew cask install vagrant
    $ brew cask install vagrant-manager
    $ vagrant plugin install vagrant-r10k
    $ vagrant plugin install vagrant-vbguest


#### Installation

To get Archivesspace running download the vagrant file and run 'vagrant up'.

    $ git clone https://github.com/NYULibraries/vagrant-archivesspace
    $ cd vagrant-archivesspace
    $ vagrant up


To connect to your vagrant box you can,

    $ vagrant ssh


Once vagrant is finished running it can take a few minutes for 
Archivesspace to initially start up.  Point you're browser at
http://localhost:9080 and when archivesspace has completed its 
startup process you connect to the frontend.


### Usage

Vagrant-archivesspace will install the latest version of Archivesspace 
on a Virtualbox VM running Centos 6.7 and mysql.  The passwords for
mysql "root" and "asdb" users have been set to "vagrant".

The archivesspace ports have been mapped in the following way,

> frontend   8080 => localhost:9080

> public     8081 => localhost:9081

> backend    8089 => localhost:9089

> solr       8090 => localhost:9090

> indexer    8091 => localhost:9091

Also, the VM has two NICs, the second of which is a "host only adapter"
with an ip address of 192.168.50.39.  To connect locally archivesspace 
from your workstation go to http://192.168.50.39:8080.

Once the VM is running you can connect to the box by running

> $ vagrant ssh

At this point you will be logged in as the vagrant user, which
has passwordless sudo access.

Archivesspace is installed in /opt/archivesspace.  Archivesspace-vagrant
uses puppet to provision the VM.  By default it will install the latest
available version. If you would like to intall a different virsion of 
archivesspace, from the vagrant-archivesspace reposiroty, edit
puppet/hieradata/common.yaml and change the value of  
archivesspace::version: 'latest'
to the version of archivesspace that you want to install.

To find a list of available versions a you can do the following,

    $ vagrant ssh
    $ yum --showduplicates list archivesspace

