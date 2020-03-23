Gem::Specification.new do |spec|
  spec.name                 = 'rubocop-bitcrowd'
  spec.version              = '2.1.2'
  spec.authors              = ['bitcrowd']
  spec.email                = ['info@bitcrowd.net']

  spec.summary              = 'The bitcrowd rubocop.yml as a gem.'
  spec.description          = 'Use this as a quick start to get rubocop with the '\
                              'settings we use at bitcrowd into your project'
  spec.homepage             = 'https://github.com/bitcrowd/rubocop-bitcrowd'
  spec.license              = 'MIT'
  spec.post_install_message = <<~HEREDOC

    This version of rubocop-bitcrowd no longer overrides RuboCop's AllCops:Exclude list.
    It only adds extra patterns not included in the defaults.

    Therefore if you want to keep excluding both, the bitcrowd patterns as well as the RuboCop default ones,
    add this to your .rubocop.yml
    inherit_mode:
      merge:
        - Exclude

    For more details: https://rubocop.readthedocs.io/en/latest/configuration/#merging-arrays-using-inherit_mode

    Cheers!
    Your friends at bitcrowd

  HEREDOC

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir      = 'exe'
  spec.executables = 'rubocop-autofix'

  spec.add_runtime_dependency 'rubocop', '~> 0.78.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
end
