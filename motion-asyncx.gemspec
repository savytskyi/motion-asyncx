# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'motion-asyncx'
  s.version     = '0.0.1'
  s.date        = '2015-09-18'
  s.summary     = "Chainable async blocks for iOS"
  s.description = ""
  s.authors     = ["Kyrylo Savytskyi"]
  s.email       = 'mail@savytskyi.com'
  s.files       = ["lib/motion-asyncx.rb"]
  s.homepage    = 'http://rubygems.org/gems/async-motion'
  s.license     = 'MIT'

  s.files         = Dir.glob("lib/**/*.rb")
  s.require_paths = ["lib"]
end