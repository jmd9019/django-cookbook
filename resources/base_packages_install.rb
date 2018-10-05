# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

#Install python 3.5 and pip latest version
resource_name :install_python3_and_pip

property :install_python3, [String,Integer], name_property: true

action :install do
  
  python_runtime '3.5' do
    options pip_version: true
  end

end

=begin
#Install Django through pip
resource_name :install_django do

property :version, [String,Integer], name_property: true, required: true

action :install do
  
  python_package 'Django' do
    version new_resource.version
  end

end

end
#Create virtualenv
resource_name :create_virtualenv do

property :path, [String], required: true, name_property: true

action :create do
  python_virtualenv new_resource.path
end
end

=end
