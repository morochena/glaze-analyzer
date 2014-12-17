# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glaze/analyzer/version'

Gem::Specification.new do |spec|
  spec.name          = "glaze-analyzer"
  spec.version       = Glaze::Analyzer::VERSION
  spec.authors       = ["Marcus Orochena"]
  spec.email         = ["marcus@orochena.net"]
  spec.summary       = %q{WoW Arena Analytics}
  spec.description   = %q{Queries Wow Arena Stats}
  spec.homepage      = "http://www.glaze-wow.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
