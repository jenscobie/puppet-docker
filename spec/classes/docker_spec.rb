require 'spec_helper'

describe 'docker' do

  context 'ensure => present' do
    let(:params) { { :ensure => 'present' } }

    it do
      should contain_package('DockerToolbox-1.8.2b').with({
        :ensure   => 'present',
        :source   => 'https://github.com/docker/toolbox/releases/download/v1.8.2b/DockerToolbox-1.8.2b.pkg',
        :provider => 'apple',
      })
    end
  end

  context 'ensure => absent' do
    let(:params) { { :ensure => 'absent' } }

    it { should contain_package('DockerToolbox-1.8.2b').with_ensure('absent') }
  end

end
