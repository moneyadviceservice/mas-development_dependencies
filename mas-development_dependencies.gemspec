# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mas/development_dependencies/version'

Gem::Specification.new do |spec|
  spec.name          = 'mas-development_dependencies'
  spec.version       = MAS::DevelopmentDependencies::Version::STRING
  spec.authors       = ['Money Advice Service']
  spec.email         = ['']
  spec.description   = %q{Development dependencies management and setup}
  spec.summary       = %q{Central place to manage gems and other setup for all Money Advice Service development project.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 3.2'

  spec.add_dependency 'capybara', '~> 2.1'
  spec.add_dependency 'capybara-screenshot', '~> 0.3.13'
  spec.add_dependency 'cucumber-rails'
  spec.add_dependency 'database_cleaner'
  spec.add_dependency 'factory_girl_rails', '~> 4.0'
  spec.add_dependency 'guard'
  spec.add_dependency 'guard-livereload'
  spec.add_dependency 'guard-rspec'
  spec.add_dependency 'guard-sass'
  spec.add_dependency 'konacha', '>= 3.0'
  spec.add_dependency 'poltergeist', '~> 1.3'
  spec.add_dependency 'pry-rails'
  spec.add_dependency 'pry-rescue'
  spec.add_dependency 'rack-livereload'
  spec.add_dependency 'rspec-rails', '~> 2.0'
  spec.add_dependency 'shoulda-matchers'
  spec.add_dependency 'site_prism'
  spec.add_dependency 'timecop'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sqlite3'
end
