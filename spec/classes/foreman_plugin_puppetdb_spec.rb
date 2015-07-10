require 'spec_helper'

describe 'foreman::plugin::puppetdb' do
  let :facts do
    on_supported_os['debian-7-x86_64'].merge({
      :concat_basedir => '/tmp',
    })
  end

  it 'should call the plugin' do
    should contain_foreman__plugin('puppetdb').with_package('ruby-puppetdb-foreman')
  end
end
