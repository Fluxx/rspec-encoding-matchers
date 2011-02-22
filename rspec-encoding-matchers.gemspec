# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rspec_encoding_matchers/version"

Gem::Specification.new do |s|
  s.name        = "rspec-encoding-matchers"
  s.version     = RSpecEncodingMatchers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeff Pollard"]
  s.email       = ["jeff.pollard@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{RSpec matchers for Ruby 1.9 string encodings.}
  s.description = %q{RSpec matchers for Ruby 1.9 string encodings.}

  s.rubyforge_project = "rspec-encoding-matchers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'ZenTest'
end
