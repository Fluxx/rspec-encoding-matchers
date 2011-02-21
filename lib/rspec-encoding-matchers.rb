module RSpecEncodingMatchers
  extend RSpec::Matchers::DSL

  matcher :encoded_as do |expected|
    match { |actual| actual.encoding == expected }
  end
end