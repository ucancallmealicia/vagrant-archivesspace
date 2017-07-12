## vagrant-archivesspace
Vagrant installer for archivesspace

#### Table of Contents

1.  [Overview] (#overview)
3.  [Installation] (#installation)
5.  [Usage] (#usage)


#### Overview

Installs archivesspace on a vagrant box running Cnetos 7.


#### Installation

To get Archivesspace running download the vagrant file and run 'vagrant up'.

    $ git clone https://github.com/NYULibraries/vagrant-archivesspace
    $ cd vagrant-archivesspace
    $ vagrant up


To connect to your vagrant box you can,

    $ vagrant ssh


Once vagrant is finished running you can point your browser at
http://localhost:8080 to connect to archivesspace

### Usage

Vagrant-archivesspace will install the latest version of Archivesspace 
on a Virtualbox VM running Centos 7 and mysql.  

The archivesspace ports have been mapped in the following way,

> frontend   8080 => localhost:8080

> public     8081 => localhost:8081

> backend    8089 => localhost:8089

> solr       8090 => localhost:8090

> indexer    8091 => localhost:8091

Also, the VM has two NICs, the second of which is a "host only adapter"
with an ip address of 192.168.50.39.  To connect locally archivesspace 
from your workstation go to http://192.168.50.39:8080.

Once the VM is running you can connect to the box by running

> $ vagrant ssh

At this point you will be logged in as the vagrant user, which
has passwordless sudo access.

Archivesspace is installed in /opt/archivesspace.  

Archivesspace uses the follwoign myswl setting,

  user:     asdb
  password: password

