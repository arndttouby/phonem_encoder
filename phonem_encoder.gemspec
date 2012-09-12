# -*- encoding: utf-8 -*-
require File.expand_path('../lib/phonem_encoder/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Arndt Touby"]
  gem.email         = ["arndt@touby.eu"]
  gem.description   = %q{This gem can be used for finding strings by their phonetic sound - optimized for the german language}
  gem.summary       = %q{Encode a string with the PHONEM algorithm}
  gem.homepage      = "http://github.com/arndttouby/phonem_encoder"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "phonem_encoder"
  gem.require_paths = ["lib"]
  gem.version       = PhonemEncoder::VERSION

  gem.add_development_dependency "rspec"
end
