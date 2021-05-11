Gem::Specification.new do |spec|
  spec.name                 = 'rubocop-bitcrowd'
  spec.version              = '2.2.0'
  spec.authors              = ['bitcrowd']
  spec.email                = ['info@bitcrowd.net']

  spec.summary              = 'The bitcrowd rubocop.yml as a gem.'
  spec.description          = 'Use this as a quick start to get rubocop with the '\
                              'settings we use at bitcrowd into your project'
  spec.homepage             = 'https://github.com/bitcrowd/rubocop-bitcrowd'
  spec.license              = 'MIT'

  spec.post_install_message = <<~HEREDOC

    Starting with this version of rubocop-bitcrowd, we are following RuboCop's
    modularization into separate gems and splitting up our configuration into:
    - .rubocop.yml
    - .rubocop-rails.yml
    - .rubocop-rspec.yml
    - .rubocop-performance.yml

    If you want to include the `rails`, `rspec` or `performance` cops, add the
    respective gems to your Gemfile:

    gem 'rubocop-rails', require: false
    gem 'rubocop-rspec', require: false
    gem 'rubocop-performance', require: false

    Add include the bitcrowd specific configuration in your .rubocop.yml

    inherit_gem:
      rubocop-bitcrowd:
        - .rubocop.yml
        - .rubocop-rspec.yml
        - .rubocop-rails.yml
        - .rubocop-performance.yml

    Cheers!
    Your friends at bitcrowd

  HEREDOC

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir      = 'exe'
  spec.executables = 'rubocop-autofix'

  spec.metadata = {
    'changelog_uri' => 'https://github.com/bitcrowd/rubocop-bitcrowd/blob/master/CHANGELOG.md'
  }

  spec.add_runtime_dependency 'rubocop', '>= 0.78.0'

  spec.add_development_dependency 'bundler', '>= 2.1.0'
  spec.add_development_dependency 'rake', '~> 12.3.3'
end
