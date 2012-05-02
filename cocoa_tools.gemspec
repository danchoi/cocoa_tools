# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "cocoa_tools"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.0'

  s.authors     = ["Daniel Choi"]
  s.email       = ["dhchoi@gmail.com"]
  s.homepage    = "http://github.com/danchoi/cocoa_tools"
  s.summary     = %q{Some utilities for working with Cocoa files}
  s.description = s.summary

  s.rubyforge_project = "cocoa_tools"

  s.test_files    = []
  s.executables   = ['cocoa', 'cocoaman']

end
