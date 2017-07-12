## vagrant-archivesspace
Vagrant installer for archivesspace

#### Table of Contents

1.  [Overview] (#overview)
3.  [Installation] (#installation)
5.  [Usage] (#usage)
5.  [Versions] (#versions)


#### Overview

Installs archivesspace on a vagrant box running Cnetos 7.


#### Installation

To get Archivesspace running download the vagrant file and run 'vagrant up'.

    $ git clone https://github.com/NYULibraries/vagrant-archivesspace
    $ cd vagrant-archivesspace
    $ vagrant up


### Usage

Vagrant-archivesspace will install the latest version of Archivesspace 
on a Virtualbox VM running Centos 7 and mysql.  

To connect to your vagrant box you can,

    $ vagrant ssh

 To connect to the front end pint your browser at 

    http://localhost:8080 

 Archivesspace has the default username and password, admin/admin

The archivesspace ports have been mapped in the following way,

> frontend   8080 => localhost:8080

> public     8081 => localhost:8081

> backend    8089 => localhost:8089

> solr       8090 => localhost:8090

> indexer    8091 => localhost:8091


Archivesspace is installed in /opt/archivesspace.  

Archivesspace uses the following  mysql settings,

  user:     asdb
  password: password


#### Versions

Currently vagrant-archivessapce runs archivesspace v2.0.0.  Other available versions are listed in the Vagrantfile.  To load another version uncomment the version you would like to run and run vagrant up.
