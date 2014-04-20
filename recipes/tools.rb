#
# Cookbook Name:: appbox
# Recipe:: tools
#
# Install basic sysadmin/devops tools.
#

include_recipe "curl"
#include_recipe "htop"
include_recipe "git"
if platform?("centos")
  package "screen" do
    action :install
  end
else
  include_recipe "tmux"
end
