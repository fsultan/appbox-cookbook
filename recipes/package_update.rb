#
# Cookbook Name:: appbox
# Recipe:: package_update
#
# Update apt-get packages.
#

if platform_family?("debian")
  include_recipe "apt"
elsif platform_family?("rhel")
  if platform?("amazon")
    include_recipe "yum-amazon"
  else 
    include_recipe "yum-epel"
  end
end
