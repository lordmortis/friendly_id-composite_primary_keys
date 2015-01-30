# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'friendly_id_with_composite_primary_keys/version'

Gem::Specification.new do |spec|
  spec.name          = "friendly_id_with_composite_primary_keys"
  spec.version       = FriendlyIdWithCompositePrimaryKeys::VERSION
  spec.authors       = ["Brendan Ragan"]
  spec.email         = ["lordmortis@gmail.com"]
  spec.summary       = "A plugin for friendly_id to make it work with composite_primary_keys"
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
