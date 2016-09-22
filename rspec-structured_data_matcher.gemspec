# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/structured_data_matcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-structured_data_matcher'
  spec.version       = Rspec::StructuredDataMatcher::VERSION
  spec.authors       = ['kawakubox']
  spec.email         = ['shigefumi.kawakubo@gmail.com']

  spec.summary       = 'RSpec custom matcher for structured data.'
  spec.description   = 'This is custom matcher for RSpec. Using Google structured-data testing tool.'
  spec.homepage      = 'https://github.com/kawakubox/rspec-structured_data_matcher'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
