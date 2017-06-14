require 'spec_helper'

describe 'secretresource' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "secretresource class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('secretresource::params') }
          it { is_expected.to contain_class('secretresource::install').that_comes_before('secretresource::config') }
          it { is_expected.to contain_class('secretresource::config') }
          it { is_expected.to contain_class('secretresource::service').that_subscribes_to('secretresource::config') }

          it { is_expected.to contain_service('secretresource') }
          it { is_expected.to contain_package('secretresource').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'secretresource class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('secretresource') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
