require 'spec_helper'

describe package('memcached') do
  it { should be_installed }
end
