require 'spec_helper'

describe package('memcached') do
  it { should be_installed }
end

describe service('memcached') do
  it { should be_running }
  it { should be_enabled }
end

describe port(11211) do
  it { should be_listening }
end
