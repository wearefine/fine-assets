# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fine-assets/version'

Gem::Specification.new do |spec|
  spec.name          = 'fine-assets'
  spec.version       = FineAssets::VERSION
  spec.authors       = ['Tim Shedor']
  spec.email         = ['tim@wearefine.com']
  spec.description   = %q{An asset helper for all your FINE needs}
  spec.summary       = %q{An asset helper for all your FINE needs}
  spec.homepage      = 'https://github.com/wearefine/fine-assets'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency "sass"
  spec.add_dependency "railties", [">= 3.1.0"]
  spec.add_dependency "rails"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
