# # encoding: utf-8

# Inspec test for recipe django-cookbook::dev_version_through_git

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#Check python installation
describe package('python3') do
  it { should be_installed }
end

#Check pip installation
describe pip('pip') do
  it { should be_installed }
  its('version') { should eq '18.0' }
end
