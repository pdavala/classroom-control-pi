class profile::redis (
  $master=false,
  ){
  require profile::epel
  if $master {
  $slaveof=undef
  }
  else {
  $slaveof='master.puppetlabs.vm 6479'
  }
  
  class { 'redis':
    # what parameter should we pass to set maxmemory to 10mb?
    maxmemory => '10mb',
    bind => $ipaddress,
    slaveof => $slaveof,
  }
  
}
