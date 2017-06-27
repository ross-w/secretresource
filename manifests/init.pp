# Class: secretresource
# ===========================
#
# Installs a 'none' catalog indirector and allows resources to be wrapped to ensure
# they are only called when this is in use
#
# Parameters
# ----------
#
# * `none_catalog_path`
#   Path to the none catalog driver
#
class secretresource (
  $none_catalog_path = $::secretresource::params::none_catalog_path,
) inherits ::secretresource::params {

  # validate parameters here

  class { '::secretresource::install': } ->
  Class['::secretresource']
}
