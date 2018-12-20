# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'archivable/version'

Gem::Specification.new do |spec|
  spec.name          = 'archivable'
  spec.version       = Archivable::VERSION
  spec.authors       = ['Gaurav Singh Jantwal']
  spec.email         = ['gaurav.jantwal@gmail.com']

  spec.summary       = %q{Archives Rails model instead of deleting.}
  spec.description   = %q{Archives Rails model instead of deleting, with raising callbacks.}
  spec.homepage      = "https://github.com/gauravjantwal/archivable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activemodel', '>= 4.2', '< 6.0'
  spec.add_dependency 'activesupport', '>= 4.2', '< 6.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
