require 'spec_helper'

describe 'foreman::plugin::tasks' do
  describe 'Fedora' do
    let :facts do
      on_supported_os['fedora-19-x86_64']
    end

    it 'should call the plugin' do
      should contain_foreman__plugin('tasks').with_package('rubygem-foreman-tasks')
      should contain_service('foreman-tasks').with('ensure' => 'running', 'enable' => 'true', 'name' => 'foreman-tasks')
    end
  end

  describe 'RHEL' do
    let :facts do
      on_supported_os['redhat-6-x86_64']
    end

    it 'should call the plugin' do
      should contain_foreman__plugin('tasks').with_package('ruby193-rubygem-foreman-tasks')
      should contain_service('foreman-tasks').with('ensure' => 'running', 'enable' => 'true', 'name' => 'foreman-tasks')
    end
  end

  describe 'Debian' do
    let :facts do
      on_supported_os['debian-7-x86_64']
    end

    it 'should call the plugin' do
      should contain_foreman__plugin('tasks').with_package('ruby-foreman-tasks')
      should contain_service('foreman-tasks').with('ensure' => 'running', 'enable' => 'true', 'name' => 'ruby-foreman-tasks')
    end
  end
end
