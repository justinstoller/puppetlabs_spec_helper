require 'puppetlabs_spec/files'
require 'puppetlabs_spec/matchers'
require 'puppetlabs_spec/fixtures'

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
