$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'puppetlabs_spec/rspec'

puts "Using 'PROJECT_ROOT/puppetlabs_spec_helper' is deprecated, please install as a gem and require 'puppetlabs_spec/rspec' instead"
