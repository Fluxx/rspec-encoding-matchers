$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require "rspec_encoding_matchers"

RSpec.configure do |config|
  config.color_enabled = true
  config.include RSpecEncodingMatchers
end