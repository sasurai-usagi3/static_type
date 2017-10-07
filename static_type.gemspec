lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'static_type/version'

Gem::Specification.new do |spec|
  spec.name          = 'static_type'
  spec.version       = StaticType::VERSION
  spec.authors       = ['Takumu Uyama']
  spec.email         = ['sasurai.usagi3@gmail.com']

  spec.summary       = 'Add ruby to type for variable.'
  spec.description   = 'Add ruby to type for variable.Now only a part of Integer.'
  spec.homepage      = 'https://github.com/sasurai-usagi3/static_type'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
end
