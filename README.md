# vagrant-archivesspace
A vagrant installer for Archivesspace 1.4


# Installation

The installation uses librarian puppet to load puppet modules
at build time.  You'll need ot the vagrant plugin for librarian-puppet,
so before you begin run the following,

> vagrant plugin install vagrant-librarian-puppet
 
Then you can proceed with,

> $ git clone https://NYULibraries/vagrant-archviesspace

> $ cd vagrant-archivesspace

> $ vagrant up

Once vagrant is finished running it can take a few minutes for 
Archivesspace to initially start up.  Point you're browser at
http://127.0.0.1:8180 and shen archivesspace has completed its 
startup process you connect to th frontend.


# Dependencies

To run the installer you'll need virtualbox and vagrant installed. 
If you're running OS X and have homebrew installed it's pretty simple,


> $ brew cask install virtualbox

> $ brew cask install vagrant


# The gory details

This will install Archivesspace 1.4.2 in a Virtualbox VM 
running Centos 6.7 and mysql.  The passwords for the mysql 
"root" and "as" users have been set to "vagrant".

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

