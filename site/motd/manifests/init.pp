class motd {
  exec { "figlet 'Heyyaaaa - coding is fun ${::fqdn}!' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    # what relationship should we add here to ensure that figlet is available to run?
    require => Package['figlet'],
  }

  package { 'figlet':
    ensure => present,
  }
}
