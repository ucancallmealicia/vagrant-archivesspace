class motd {
  case $::virtual {
    'kvm': { 
        file { "/etc/motd":
            ensure => file,
            source => "puppet:///modules/motd/motd.vagrant",
        }
     }
    'xenu': { 
        file { "/etc/motd":
            ensure => file,
            source => "puppet:///modules/motd/motd.dlts-aws",
        }
     }
    default: { 
        file { "/etc/motd":
            ensure => file,
            source => "puppet:///modules/motd/motd",
        }
     }
  }
}
