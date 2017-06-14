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
  $package_name = $::secretresource::params::package_name,
  $blackhole_dir = $::secretresource::params::blackhole_dir,
) inherits ::secretresource::params {

  # validate parameters here

  class { '::secretresource::install': } ->
  class { '::secretresource::mount': } ->
  Class['::secretresource']
}
