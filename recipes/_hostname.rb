#
# Cookbook Name:: martinisoft-server
# Recipe:: default
#
# Copyright (C) 2013 - 2014 Aaron Kalin
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

hostname = node.name

file '/etc/hostname' do
  content "#{hostname}\n"
  mode '0644'
  notifies :reload, 'ohai[reload]', :immediately
end

execute "hostname #{hostname}" do
  only_if { node['hostname'] != hostname }
  notifies :reload, 'ohai[reload]', :immediately
end

hostsfile_entry 'localhost' do
  ip_address '127.0.0.1'
  hostname 'localhost'
  action :append
end

hostsfile_entry 'localhost_ubuntu' do
  ip_address '127.0.1.1'
  hostname "#{hostname}.martinisoftware.com"
  aliases [hostname]
  action :update
  notifies :reload, 'ohai[reload]', :immediately
end

hostsfile_entry 'set hostname' do
  ip_address node['ipaddress']
  hostname "#{hostname}.martinisoftware.com"
  aliases [hostname]
  action :create
  notifies :reload, 'ohai[reload]', :immediately
end

ohai 'reload' do
  action :nothing
end
