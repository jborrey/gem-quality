lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_quality/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_quality"
  spec.version       = GemQuality::VERSION
  spec.authors       = ["many people"]
  spec.email         = ["julian.borrey@coinbase.com"]

  spec.summary       = "Gem to detemine the quality and strength of gems."
  spec.description   = "This library will use multiple factors to score the strength of a gem to "\
                       "allow a developer to identify potential weaknesses in their application." \
                       "Such factors include the number of contributors on the gem repo and the " \
  spec.homepage      = "https://github.com/jborrey/gem-quality"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(/^spec/) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
