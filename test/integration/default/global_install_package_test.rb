# # encoding: utf-8

# Inspec test for recipe django-git::global_install_package

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#Check django version
describe package('python3-django') do
  it { should be_installed }
  its ('version') { should eq '1.8.7-1ubuntu5.6' }
end
