# frozen_string_literal: true

require_relative 'lib/risk/version'

Gem::Specification::new do |spec|
  spec.name        = 'risk'
  spec.version     = Risk::VERSION
  spec.authors     = ['vaporyhumo']
  spec.email       = ['roanvilina@gmail.com']
  spec.license     = 'Unlicense'

  spec.summary     = 'Yet another Lisp language'
  spec.description = 'Lisp language implemented in Ruby'
  spec.homepage    = 'https://github.com/vaporyhumo/risk'

  spec.files       = Dir.glob("lib/**/*.rb") + ['README.md', 'LICENSE']

  spec.required_ruby_version = Gem::Requirement::new('~> 3.1')

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['changelog_uri']   = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.add_dependency 'farseer',  '~> 0.7'
  spec.add_dependency 'muina',    '~> 0.5'
  spec.add_dependency 'zeitwerk', '~> 2'
end
