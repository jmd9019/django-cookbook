# # encoding: utf-8

# Inspec test for recipe django-cookbook::install_python_and_pip

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#Check python installation
describe package('python3') do
  it { should be_installed }
  its('version') { should cmp > '3.5' }
end

#Check pip installation
describe pip('pip') do
  it { should be_installed }
  its('version') { should eq '18.0' }
end
