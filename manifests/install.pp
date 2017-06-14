# == Class secretresource::install
#
# This class is called from secretresource for install.
#
class secretresource::install {

  file { $::secretresource::params::none_catalog_path:
    ensure => file,
    source => 'puppet:///modules/secretresource/catalog/none.rb',
  }

  if $::puppet_catalog_cache_terminus != 'none' {
    exec { 'set puppet cache terminus':
      command => 'puppet config set catalog_cache_terminus none',
      require => File[$::secretresource::params::none_catalog_path],
    }
  }
}
