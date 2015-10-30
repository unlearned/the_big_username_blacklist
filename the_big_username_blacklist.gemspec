lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_big_username_blacklist/version'

Gem::Specification.new do |spec|
  spec.name          = 'the_big_username_blacklist'
  spec.version       = TheBigUsernameBlacklist::VERSION
  spec.authors       = ['Takashi Uesugi']
  spec.email         = ['tksuesg@gmail.com']
  spec.summary       = %q{This library lets you validate usernames against a blacklist.}
  spec.description   = %q{This library lets you validate usernames against a blacklist. The blacklist data is based on the data from The-Big-Username-Blacklist and contains privilege, programming terms, section names, financial terms and actions.

see also...
- https://github.com/marteinn/The-Big-Username-Blacklist
- https://pypi.python.org/pypi/the_big_username_blacklist
- https://www.npmjs.com/package/the-big-username-blacklist
}
  spec.homepage      = 'https://github.com/unlearned/the_big_username_blacklist'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
