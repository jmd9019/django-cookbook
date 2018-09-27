#
# Cookbook:: django-git
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#apt-get update -y
apt_update 'daily' do
   frequency 86_400
   action :periodic
end
