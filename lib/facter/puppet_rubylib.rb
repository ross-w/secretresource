
require 'facter'


Facter.add(:puppet_rubylib) do
  setcode do
    vr = $LOAD_PATH.select do |lp|
      !Dir["#{lp}/puppet/indirector/catalog"].empty?
    end
    vr[0]
  end
end