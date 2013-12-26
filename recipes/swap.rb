#
# Cookbook Name:: sr-base
# Recipe:: swap
#
# Copyright (C) 2013 Social Rep
# 
# All rights reserved - Do Not Redistribute
#

#value in KB -- reported by ohai
MINIMUM_TOTAL_MEMORY = 1000000 #1 gb

if node[:memory][:total].to_i < MINIMUM_TOTAL_MEMORY and node[:memory][:swap][:total].to_i <= 0
  swap_file '/tmp/swapfile' do
    size 1024 #MBs
  end
end

