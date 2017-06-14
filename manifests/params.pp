# == Class secretresource::params
#
# This class is meant to be called from secretresource.
# It sets variables according to platform.
#
class secretresource::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'nullfs'
      $blackhole_dir = '/var/spool/catalogblackhole'
    }
    'RedHat', 'Amazon': {
      $package_name = 'nullfs'
      $blackhole_dir = '/var/spool/catalogblackhole'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
