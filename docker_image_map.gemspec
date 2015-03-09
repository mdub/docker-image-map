lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker_image_map/version'

Gem::Specification.new do |spec|
  spec.name          = "docker_map"
  spec.version       = DockerImageMap::VERSION
  spec.authors       = ["Mike Williams"]
  spec.email         = ["mdub@dogbiscuit.org"]
  spec.summary       = %q{Visualize docker image history}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "clamp", ">= 0.6.4"
  spec.add_runtime_dependency "docker-api"
  spec.add_runtime_dependency "term-ansicolor"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rspec-collection_matchers"

end
