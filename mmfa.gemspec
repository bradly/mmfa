# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mmfa/version'

Gem::Specification.new do |gem|
  gem.name          = "mmfa"
  gem.version       = Mmfa::VERSION
  gem.authors       = ["Bradly Feeley"]
  gem.email         = ["bradlyf@gmail.com"]
  gem.description   = %q{A little gem to get the current multi-factor authentication key on a Mac}
  gem.summary       = %q{A little gem to get the current multi-factor authentication key on a Mac}
  gem.homepage      = "https://github.com/bradly/mmfa"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('base32')
  gem.add_dependency('google_authenticator_auth')
end
