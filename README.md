# vagrant-archivesspace
A vagrant installer for Archivesspace 1.4


# Installation

To run the installer do the following,

> $ git clone https://NYULibraries/vagrant-archviesspace

> $ cd vagrant-archivesspace

> $ vagrant up

Once vagrant is finished running it can take a few minutes for 
Archivesspace to initially start up.   Once it's running you 
can point your browser at http://127.0.0.1:8180 to get to the
frontend.


# Dependencies

You'll need virtualbox and vagrant installed locally in order to 
run the installer.  If you're running OS X and have homebrew isntalled 
is pretty simple

> $ brew cask install virtualbox

> $ brew cask install vagrant


# The gory details

This will install Archivesspace 1.4.2 in a Virtualbox VM 
running Centos 6.7 and mysql.    The passwords for the mysql 
root and as users have been set to "vagrant".

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

Archivesspace is installed in /usr/local/archivesspace

# Note: 

This project is in the very early stages adn not much testing has
been done at this point.  It was developed on OS x 10.9 and has not
been tested on any other operating systems.  

Since vagrant produces a self containbed environment I expect it to
work fairly consistently, but if you have any issues with the installer 
please let me know.

