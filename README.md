## vagrant-archivesspace
Vagrant installer for archivesspace

#### Table of Contents

1.  [Overview] (#overview)
2.  [Pre-installation] (#pre-installation)
3.  [Installation] (#installation)


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


#### Installation

To get Archivesspace running download the vagrant file and run 'vagrant up'.

    $ git clone https://github.com/NYULibraries/vagrant-archivesspace
    $ cd vagrant-archivesspace
    $ vagrant up


To connect to your vagrant box you can,

    $ vagrant ssh


Once vagrant is finished running it can take a few minutes for 
Archivesspace to initially start up.  Point you're browser at
http://127.0.0.1:8180 and shen archivesspace has completed its 
startup process you connect to thi frontend.


# The gory details

This will install the latest version of Archivesspace in a Virtualbox VM 
running Centos 6.7 and mysql.  The passwords for the mysql 
"root" and "asdb" users have been set to "vagrant".

The archivesspace ports have been mapped in the following way,

> frontend   8080 => 127.0.0.1:8180

> public     8081 => 127.0.0.1:8181

> backend    8089 => 127.0.0.1:8189

> solr       8090 => 127.0.0.1:8190

> indexer    8091 => 127.0.0.1:8191

Once the VM is running you can connect to the box by running

> $ vagrant ssh

At this point you will be logged in as the vagrant user, which
has passwordless sudo access.

Archivesspace is installed in /opt/archivesspace

