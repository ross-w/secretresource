require 'puppet/resource/catalog'
require 'puppet/indirector/none'

class Puppet::Resource::Catalog::None < Puppet::Indirector::None
  desc "Don't store catalogs"

  def save(request)
  end

  private

end