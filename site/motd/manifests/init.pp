class motd {
  exec { "figlet 'Wednesday class done. Booya!' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    require => Package['figlet'], 
  }

  package { 'figlet':
    ensure => present,
  }
}
