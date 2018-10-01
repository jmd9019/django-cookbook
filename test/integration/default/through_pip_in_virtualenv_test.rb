# # encoding: utf-8

# Inspec test for recipe django-git::through_pip_in_virtualenv

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

#Check Django in virtualenv
describe pip('Django', '/root/virtualenvs/django/bin/pip') do
  it { should be_installed }
  its('version') { should eq '2.1.1' }
end
