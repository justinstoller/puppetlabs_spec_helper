# Define the main module namespace for use by the helper modules
module PuppetlabsSpec
end

# Require all necessary helper libraries so they can be used later
require 'puppet_module_spec_helper/puppetlabs_spec/files'
require 'puppet_module_spec_helper/puppetlabs_spec/fixtures'
require 'puppet_module_spec_helper/puppetlabs_spec/matchers'

RSpec.configure do |config|
  # Include PuppetlabsSpec helpers so they can be called at convenience
  config.extend PuppetlabsSpec::Files
  config.extend PuppetlabsSpec::Fixtures
  config.include PuppetlabsSpec::Fixtures

  # This will cleanup any files that were created with tmpdir or tmpfile
  config.after :each do
    PuppetlabsSpec::Files.cleanup
  end
end
