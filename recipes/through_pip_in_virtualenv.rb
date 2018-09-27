#
# Cookbook:: django-git
# Recipe:: through_pip_in_virtualenv
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install python 3
python_runtime '3'

#Create virtualenv
python_virtualenv '/root/virtualenvs/django'

#Install django in above created virtualenv
python_package 'Django' do
  version '2.1.1'
#  python_virtualenv '/myapp'
end
