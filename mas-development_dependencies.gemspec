# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mas/development_dependencies/version'

Gem::Specification.new do |spec|
  spec.name          = "mas-development_dependencies"
  spec.version       = MAS::DevelopmentDependencies::Version::STRING
  spec.authors       = ["Money Advice Service"]
  spec.email         = [""]
  spec.description   = %q{Development dependencies management and setup}
  spec.summary       = %q{Central place to manage gems and other setup for all Money Advice Service development project.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
