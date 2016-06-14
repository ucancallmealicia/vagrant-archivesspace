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

