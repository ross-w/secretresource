# == Class secretresource::service
#
# This class is meant to be called from secretresource.
# It ensure the service is running.
#
class secretresource::mount {

  file { $::secretresource::blackhole_dir:
    ensure => directory,
  } ->

  mount { $::secretresource::blackhole_dir:
    ensure => mounted,
    atboot => true,
    device => 'nullfs',
    type   => 'nullfs',
  }
}
