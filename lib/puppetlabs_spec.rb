require 'puppetlabs_spec/files'
require 'puppetlabs_spec/fixtures'
require 'puppetlabs_spec/matchers'

module PuppetlabsSpec
  # FIXTURE_DIR represents the standard locations of all fixture data. Normally
  # this represents <project>/spec/fixtures. This will be used by the fixtures
  # library to find relative fixture data.
  FIXTURE_DIR = File.join(dir = File.expand_path(File.dirname(__FILE__)), \
    "fixtures") unless defined?(FIXTURE_DIR)
  # is this correct? I see we're extending these files in RSpec.configure??
  include PuppetlabsSpec::Files
  include PuppetlabsSpec::Fixtures

  # what about the relationshipt between this 'main' module and the
  # puppet[labs] helpers of yor
end
