# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_variate_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "random_variate_generator"
  spec.version       = RandomVariateGenerator::VERSION
  spec.authors       = ["Sergio Rivas"]
  spec.email         = ["sergiorivas@gmail.com"]
  spec.summary       = %q{Random Variate Generator for Ruby}
  spec.description   = %q{Random value generator of several distributions}
  spec.homepage      = ""
  spec.license       = "MIT"
  
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE.txt README.md)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
