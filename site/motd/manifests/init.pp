class motd {
  exec { "figlet 'is this what they mean by big data?' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    require => Package['figlet'],
  }

  package { 'figlet':
    ensure => present,
  }
}
