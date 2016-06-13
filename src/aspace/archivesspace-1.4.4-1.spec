Summary: A programm that helps archivists
Name: archivesspace
Version: 1.4.4
Release: 1 
Copyright: GPL
Group: Applications/Publishing
BuildRoot: /var/tmp/archivesspace 
prefix: /archivesspace
%description
ArchiveSpace is used to describe archival materials

%prep

%install
cp -r /Users/katepechekhonova/archive2/archivesspace /usr/local/var/tmp/archivesspace-root

%clean

%files
/archivesspace
