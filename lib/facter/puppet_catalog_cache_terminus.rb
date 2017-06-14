
require 'facter'


Facter.add(:puppet_catalog_cache_terminus) do
  setcode do
    `puppet config print catalog_cache_terminus`.strip()
  end
end