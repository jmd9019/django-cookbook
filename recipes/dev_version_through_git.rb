#
# Cookbook:: django-cookbook
# Recipe:: dev_version_through_git
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install python3 and latest pip version == python 3.5 pip 18.0
python_runtime 'install_python3.5' do
  version '3.5'
  options pip_version: true
end

#Get django dev from git
git '/root/django-dev' do
  repository 'git://github.com/django/django'
end

#install django dev
execute 'install from /root/django-dev' do
  command 'pip install -e /root/django-dev'
  cwd '/root/django-dev'
  creates '/usr/local/bin/django-admin.py'
end
