require File.expand_path("../lib/friendly_id/composite_primary_keys/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "friendly_id-composite_primary_keys"
  spec.version       = FriendlyId::CompositePrimaryKeys::VERSION
  spec.authors       = ["Brendan Ragan"]
  spec.email         = ["lordmortis@gmail.com"]
  spec.summary       = "A plugin for friendly_id to make it work with composite_primary_keys"
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'friendly_id', '~> 5.1.0', '< 6.0'
  spec.add_dependency 'composite_primary_keys', '~> 8.0', '< 9.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
