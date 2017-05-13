#
# Cookbook Name:: maxlin-cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# add user and add to sudo group
user 'maxlin' do
  comment 'Wei-Hsiang Lin'
  home '/home/maxlin'
  group 'sudo'
end

# Create SSH authorized keys files in user home directories.
user = data_bag_item('ssh_keys', 'maxlin')

ssh_authorize_key user['id'] do
  user user['id']
  key  user['ssh_key']
end
