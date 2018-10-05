#
# Cookbook:: django-cookbook
# Recipe:: install_python_and_pip
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install python3 and latest pip version == python 3.5
install_python3_and_pip 'install python3.5'

#Install django 2.1.1
install_django 'install django v2.1.1' do
  version '2.1.1'
end
