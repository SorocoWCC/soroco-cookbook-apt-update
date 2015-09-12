#
# Cookbook Name::soroco_apt_update 
# Recipe:: default
#
# Copyright (C) 2015 SOROCO.
#
# All rights reserved - Do Not Redistribute
#
# Creates the cron entry under the root user
cron 'daily_update' do
  user 'root'	
  hour '9'
  minute '0'
  command 'apt-get update'
end

# Creates the cron entry under the root user
cron 'daily_upgrade' do
  user 'root'
  hour '9'
  minute '30'
  command 'apt-get upgrade -y'
end
