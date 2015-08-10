# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leedu_RPS/version'

Gem::Specification.new do |spec|
  spec.name          = "leedu_RPS"
  spec.version       = LeeduRPS::VERSION
  spec.authors       = ["leedu708"]
  spec.email         = ["leedu708@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{Gem to play Rock Paper Scissors}
  spec.description   = %q{Play RPS against a computer or another player player}
  spec.homepage      = "https://github.com/leedu708/assignment_gems_sprint"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
