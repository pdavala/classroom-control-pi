class skeleton {
  file { '/etc/skel':
#    ensure => ???,   # what value should go here?
    ensure => 'dir',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  
  # add a resource to manage /etc/skel/.bashrc
   file { '/etc/skel/.bashrc':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0755',
    'puppet:///modules/skeleton/bashrc',
    content => "This is poornimas bashrc file",
    
    }
}
