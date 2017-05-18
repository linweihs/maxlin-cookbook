#
# Cookbook Name:: maxlin-cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# add user and add to sudo group
#user 'maxlin' do
#  comment 'Wei-Hsiang Lin'
#  home '/home/maxlin'
#  group 'sudo'
#end
#
## Create SSH authorized keys files in user home directories.
#user = data_bag_item('ssh_keys', 'maxlin')
#
#ssh_authorize_key user['id'] do
#  user user['id']
#  key  user['ssh_key']
#end
users_manage 'sysadmin' do
    group_id 26
    action [:create]
end

include_recipe 'sudo'

# modify /etc/ssh/sshd_config
openssh_server node['sshd']['config_file'] do
  PermitRootLogin 'no'
  PubkeyAuthentication 'yes'
end

service 'sshd' do
  action :restart
end
