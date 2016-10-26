class skeleton {
file {'/etc/skel':
      ensure => directory,
      owner => 'root'
      group => 'root'
      mode => '0777',
      }
 file {'/etc/skel/.bashrc':
      ensure => directory,
      owner => 'root'
      group => 'root'
      mode => '0777',
      source => 'puppet:///modules/skeleton/bashrc',
      }
     }
 
     
      
      
      
      
      
      
      
      
      
