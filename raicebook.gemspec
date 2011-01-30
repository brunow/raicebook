# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "raicebook/version"

Gem::Specification.new do |s|
  s.name        = "raicebook"
  s.version     = Raicebook::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bruno Wernimont"]
  s.email       = ["hello@brunowernimont.be"]
  s.homepage    = "http://rubygems.org/gems/raicebook"
  s.summary     = %q{This gem add a lot of usefull facebook helper for rails}
  s.description = %q{This gem add a lot of usefull facebook helper for rails}

  s.rubyforge_project = "raicebook"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('rails', '~> 3.0.3')
  s.add_dependency('koala')
  s.add_dependency('koala-rails')
end