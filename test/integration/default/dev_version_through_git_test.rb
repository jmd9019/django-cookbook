# # encoding: utf-8

# Inspec test for recipe django-cookbook::dev_version_through_git

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#Check python installation
describe package('python3') do
  it { should be_installed }
  its('version') {should match '3.5'}
end

#Check pip installation
describe pip('pip') do
  it { should be_installed }
  its('version') { should eq '18.0' }
end

#Check django installation
describe pip('django') do
  it {should be_installed}
  its('version') { should match ('2.2') }
end
