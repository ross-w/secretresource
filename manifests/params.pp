# == Class secretresource::params
#
# This class is meant to be called from secretresource.
# It sets variables according to platform.
#
class secretresource::params {
  if empty($puppet_rubylib) {
    fail("Could not find Puppet's libraries, unsupported version of Puppet?")
  }
  
  $none_catalog_path = "${puppet_rubylib}/puppet/indirector/catalog/none.rb"
}
