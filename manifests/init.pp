# Class: secretresource
# ===========================
#
# Full description of class secretresource here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class secretresource (
  $none_catalog_path = $::secretresource::params::none_catalog_path,
) inherits ::secretresource::params {

  # validate parameters here

  class { '::secretresource::install': } ->
  Class['::secretresource']
}
