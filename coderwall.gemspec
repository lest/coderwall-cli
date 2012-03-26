# -*- encoding: utf-8 -*-
require File.expand_path('../lib/coderwall/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Nartimov"]
  gem.email         = ["just.lest@gmail.com"]
  gem.description   = %q{Coderwall CLI}
  gem.summary       = %q{Coderwall CLI}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coderwall"
  gem.require_paths = ["lib"]
  gem.version       = Coderwall::VERSION
end
