# == Class secretresource::install
#
# This class is called from secretresource for install.
#
class secretresource::install {

  package { $::secretresource::package_name:
    ensure => present,
  }
}
