# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter/version"

Gem::Specification.new do |s|
  s.name        = "twitter"
  s.version     = Twitter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fernando Nobre"]
  s.email       = ["fernando.nobre@i.ndigo.com.br"]
  s.homepage    = ""
  s.summary     = %q{generic twitter module}
  s.description = %q{provides a generic twitter module, for use with social applications}
  
  s.add_dependency('mongoid', '2.0.0.rc.6')
  s.add_dependency('bson_ext', '>=1.2')

  s.rubyforge_project = "twitter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
