#
# Cookbook:: django-git
# Recipe:: global_install_through_pip
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install python3 and latest pip version == python 3.5 pip 18.0
python_runtime '3' do
  options pip_version: true
end

#Install django through pip
python_package 'Django' do
  python '3'
  version '2.1.1'
end
