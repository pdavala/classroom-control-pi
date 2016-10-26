class motd {
  exec { "figlet '404 puppet not found' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    require => Package['figlet'],
  }

  package { 'figlet':
    ensure => present,
  }
}
