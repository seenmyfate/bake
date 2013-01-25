# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bake/version'

Gem::Specification.new do |gem|
  gem.name          = "bake"
  gem.version       = Bake::VERSION
  gem.authors       = ["seenmyfate"]
  gem.email         = ["seenmyfate@gmail.com"]
  gem.description   = %q{Bake}
  gem.summary       = %q{Cooking up some rake}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
