lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'email_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "email_parser"
  spec.version       = EmailParser::VERSION
  spec.authors       = ["Danny Garcia"]
  spec.email         = ["dannygarcia.me@gmail.com"]
  spec.description   = %q{Parse RFC emails}
  spec.summary       = %q{Parse RFC emails}
  spec.homepage      = "https://github.com/garciadanny/email_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features|example_app)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 1.6.0'
  spec.add_development_dependency 'rspec', '~> 3'
end