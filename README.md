# rubocop-bitcrowd 🚓

The bitcrowd rubocop.yml as a gem.

## Installation

Add this lines to your application's Gemfile:

```ruby
gem 'rubocop', require: false
gem 'rubocop-bitcrowd', require: false
```

And then execute:

    $ bundle

## Usage

To use the configuration in your project create a .rubocop.yml with:

```yml
inherit_gem:
  rubocop-bitcrowd: .rubocop.yml

# Note: skip this if you want to override the default AllCops:Include and AllCops:Exclude list
inherit_mode:
  merge:
    - Include
    - Exclude
```

### Using rubocop-rspec

There is also a config file for [rubocop-rspec](https://github.com/rubocop-hq/rubocop-rspec). To use it add rubocop-rspec to your Gemfile.

```ruby
gem 'rubocop-rspec', require: false
```

```yml
inherit_gem:
  rubocop-bitcrowd:
    - .rubocop.yml
    - .rubocop-rspec.yml

# Note: skip this if you want to override the default AllCops:Include and AllCops:Exclude list
inherit_mode:
  merge:
    - Include
    - Exclude
```

### Using rubocop-performance

There is also a config file for [rubocop-performance](https://github.com/rubocop-hq/rubocop-performance). To use it add rubocop-performance to your Gemfile.

```ruby
gem 'rubocop-performance', require: false
```

```yml
inherit_gem:
  rubocop-bitcrowd:
    - .rubocop.yml
    - .rubocop-rspec.yml
    - .rubocop-performance.yml

# Note: skip this if you want to override the default AllCops:Include and AllCops:Exclude list
inherit_mode:
  merge:
    - Include
    - Exclude
```

## Autofixing issues

At bitcrowd we discovered it to be a very good practice to put each automatically fixable Cop into a single commit when initially adding rubocop into a bigger project.

This gem provides a simple script, that can help you with this task:

1. Create your rubocop configuration (either with the instructions above or your own)
2. Create a rubocop_todo.yml with: `rubocop --auto-gen-config`
3. Make sure you have a clean state in git, since the script will make commits for you (you may want to commit your rubocop_todo.yml)
4. Run the script (may take a while, when you want to continue working on your project meanwhile run this in a separate checkout): `rubocop-autofix`
5. Review all commits made by the script and run your tests. You can now drop certain commits of cops you don't want. Often it may make some sense to run the script again with changed settings, since rebasing 100+ commits is no fun.

## Development

Any contributions are welcome. If you attempt to change the behavior of this gem it might be wise to open an issue first to discuss the change. Otherwise feel free to open a PR.

Every PR should have a change in the [CHANGELOG](./CHANGELOG.md) file (within the [`master` section](./CHANGELOG.md#master)) briefly outlining the attempted changes.

### Release a new version

To release a new version, follow these steps:

1. update the [CHANGELOG](./CHANGELOG.md) to reflect the new release and prepare a new [`master` section](./CHANGELOG.md#master)
2. update the version in `rubocop-bitcrowd.gemspec` according to [semver](https://semver.org/)
3. commit that change
4. run `rake release`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
