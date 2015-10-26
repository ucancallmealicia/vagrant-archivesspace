class hiera {
  file { "/etc/hiera.yaml":
      ensure => file,
      source => "puppet:///modules/hiera/hiera.yaml/",
  }
}
