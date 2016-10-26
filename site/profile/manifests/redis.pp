class profile::redis (
  Optional[Boolean] $master = false
  ) {
  # We'll require our epel class so that it is enforced first.
  # Don't forget to update that class before enforcing your code
  require profile::epel

  # process all yum repos prior to any pkgs in this class
  Yumrepo <||> -> Package <| tag == 'profile::redis' |>

  if $master {
    $slaveof = undef;
  }
  else {
    $slaveof = 'master.puppetlabs.vm 6479'
  }

  class { 'redis':
    # what parameter should we pass to set maxmemory to 10mb?
    maxmemory => '10mb',
    bind => $::ipaddress,
    slaveof => $slaveof,
  }

}
