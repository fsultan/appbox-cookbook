#
# Cookbook Name:: appbox
# Recipe:: default
#

include_recipe "appbox::package_update"
include_recipe "appbox::users"
include_recipe "appbox::apps_dir"
include_recipe "appbox::tools"
include_recipe "appbox::swap"

file "/etc/hostname" do 
  content node.name
end

hostsfile_entry node.ipaddress do
  hostname node[:fqdn]
  aliases [node.name]
end

execute "hostname #{node.name}" do
end

