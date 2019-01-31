Gem::Specification.new do |spec|
  spec.name          = 'rubocop-bitcrowd'
  spec.version       = '1.3.0'
  spec.authors       = ['bitcrowd']
  spec.email         = ['info@bitcrowd.net']

  spec.summary       = 'The bitcrowd rubocop.yml as a gem.'
  spec.description   = 'Use this as a quick start to get rubocop with the '\
                       'settings we use at bitcrowd into your project'
  spec.homepage      = 'https://github.com/bitcrowd/rubocop-bitcrowd'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = 'rubocop-autofix'

  spec.add_runtime_dependency 'rubocop', '~> 0.57.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
end
