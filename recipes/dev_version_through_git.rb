#
# Cookbook:: django-cookbook
# Recipe:: dev_version_through_git
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install python3 and latest pip version == python 3.5 pip 18.0
python_runtime '3' do
  options pip_version: true
end

#Get django dev from git
git '/root/django-dev' do
  repository 'git://github.com/django/django'
end

#install django dev
python_package 'install from /root/django-dev' do
  command 'pip install .'
  cwd '/root/django-dev'
  install_options '-e'
end
