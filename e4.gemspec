# coding: utf-8
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'e4/version'

# Gem::Specification.new do |spec|
#   spec.name          = "e4"
#   spec.version       = E4::VERSION
#   spec.authors       = ["TODO: Write your name"]
#   spec.email         = ["TODO: Write your email address"]
#   spec.summary       = %q{TODO: Write a short summary. Required.}
#   spec.description   = %q{TODO: Write a longer description. Optional.}
#   spec.homepage      = ""
#   spec.license       = "MIT"

#   spec.files         = `git ls-files -z`.split("\x0")
#   spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
#   spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
#   spec.require_paths = ["lib"]

#   spec.add_development_dependency "bundler", "~> 1.5"
#   spec.add_development_dependency "rake"
# end



Gem::Specification.new do |s|
  s.name        = 'E4'
  s.version     = '0.0.0'
  s.date        = '2010-04-28'
  s.summary     = "E4"
  s.description = "E4"
  s.authors     = ["Kai-Markus Lüer"]
  s.email       = 'kailuer@web.de'
  s.files       = ["lib/e4.rb", "lib/e4/version.rb", "lib/e4/regex", "lib/e4/prepare_game"]
  s.homepage    = ""
  s.license     = 'MIT'
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
end