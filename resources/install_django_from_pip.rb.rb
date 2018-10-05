# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

#Install Django through pip
resource_name :install_django

property :version, [String,Integer], name_property: true, required: true

action :install do

  python_package 'Django' do
    version new_resource.version
  end
 
end
