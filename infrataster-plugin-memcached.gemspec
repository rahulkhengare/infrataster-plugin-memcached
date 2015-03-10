# coding: utf-8
Gem::Specification.new do |spec|
  spec.name = "infrataster-plugin-memcached"
  spec.version = '0.1.3'
  spec.authors = ["Rahul Khengare"]
  spec.email = ["rahulk1306@gmail.com"]
  spec.summary = %q{memcached plugin for Infrataster}
  spec.description = %q{Plugin for Infrataster to test behavior of memcached server}
  spec.homepage = "https://github.com/rahulkhengare/infrataster-plugin-memcached"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "infrataster", "~> 0.2"
  spec.add_runtime_dependency "memcached", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
