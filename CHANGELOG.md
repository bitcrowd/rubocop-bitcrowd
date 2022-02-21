# Changelog rubocop-bitcrowd

Presented in reverse chronological order.

## main

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.2.0...HEAD

*Put high-level summary here before releasing a new version*

### Deprecations:

* *Put deprecations here (in a brief bullet point)*

### Potentially breaking changes:

* *Put potentially breaking changes here (in a brief bullet point)*

### New features:

* *Put new features here (in a brief bullet point)*

### Fixes:

* [#42](https://github.com/bitcrowd/rubocop-bitcrowd/pull/42) Fix deprecation warning by renaming `ExcludedMethods` to `IgnoredMethods` and lock the Rubocop version to `>= 1.5.0`.
See rubocop/rubocop#9098 and https://github.com/rubocop/rubocop/blob/1e55b1aa5e4c5eaeccad5d61f08b7930ed6bc341/relnotes/v1.5.0.md
* [#43](https://github.com/bitcrowd/rubocop-bitcrowd/pull/43) Update documentation mentioning the `master` branch, to use `main` instead

## `2.2.0` (2020-03-26)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.2.0...HEAD

With this version update, `rubocop-bitcrowd` adapts to RuboCop's new modularized architecture of having separate gems for different cop targets (Rails, Rspec, Performance).

`rubocop-bitcrowd` includes separate configuration files for each RuboCop gem. To continue using the previous configuration including rules for Rspec and Rails, add the respective gems to your Gemfile:

```ruby
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false
```

And update the configuration in your `.rubocop.yml` to include the bitcrowd rules:

```yml
inherit_gem:
  rubocop-bitcrowd:
    - .rubocop.yml
    - .rubocop-rspec.yml
    - .rubocop-rails.yml
```

As a new addition, `rubocop-bitcrowd` now also includes rules for the `rubocop-performance` gem. To use them, add the gem to your Gemfile:

```ruby
gem 'rubocop-performance', require: false
```

Then include the bitcrowd config in your `.rubocop.yml`:

```yml
inherit_gem:
  rubocop-bitcrowd:
    - .rubocop.yml
    - .rubocop-rspec.yml
    - .rubocop-rails.yml
    - .rubocop-performance.yml
```

### Potentially breaking changes:

* [#34](https://github.com/bitcrowd/rubocop-bitcrowd/pull/34) Extract `rails` cops into separate configuration based on [rubocop-rails](https://github.com/rubocop-hq/rubocop-rails), following the modularization of `rubocop` itself.

### New features:

* [#32](https://github.com/bitcrowd/rubocop-bitcrowd/pull/32) add possibility to include [rubocop-performance](https://github.com/rubocop-hq/rubocop-performance) cops.

## `2.1.3` (2020-03-26)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.1.3...HEAD

This releases silences some deprecation warnings and locks down the minimal `rubocop` version `rubocop-bitcrowd` depends on.

### Fixes:

* [#31](https://github.com/bitcrowd/rubocop-bitcrowd/pull/31) Fix deprecation warning by moving `LineLength` cop from `Metrics` to `Layout` and lock the Rubocop version to `>= 0.78.0` and `< 0.79`.
* [#31](https://github.com/bitcrowd/rubocop-bitcrowd/pull/31) Lock down the minimal `rubocop` version we depend on. Similar to [rubocop-rspec](https://github.com/rubocop-hq/rubocop-rspec) we're only setting the lower boundary now.

## `2.1.2` (2019-12-17)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.1.1...v2.1.2

### Fixes:

* Remove rubocop version lock to 0.57.x

## `2.1.1` (2019-12-17)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.1.0...v2.1.1

### Fixes:

* Add compartment to `Documentation` cop

## `2.1.0` (2019-11-29)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v2.0.0...v2.1.0

### New features:
* Exclude `namespace` method from `Metrics/BlockLength` to support longer namespace definitions in rake tasks.

## `2.0.0` (2019-02-06)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.3.0...v2.0.0

This release changes our approach on excluding certain file paths and directories from being inspected by the linter. Instead of fully overriding RuboCop's default `AllCops:Exclude` list (which used to be necessary up until `rubocop` v0.57.0), `rubocop-bitcrowd` now only provides some extra patterns as an extension to the default list.

We in addition to the default directories, e.g. want to exclude `log`, `tmp` and `storage` in Rails projects.

In order to keep excluding both, the bitcrowd patterns and the RuboCop's default ones, add this to your `.rubocop.yml` file:

```yml
inherit_mode:
  merge:
    - Exclude
```

### Potentially breaking changes:

* require a rubocop version >= 0.57.0
* remove directories rubocop already excludes by default from the `AllCops:Exclude` list
  * keeping the existing list now requires to add an `inherit_mode` section into their `.rubocop.yml`:

    ```yml
    # This will merge the default exclude list with the one from rubocop-bitcrowd
    inherit_mode:
      merge:
        - Exclude
    ```

### Fixes:

* Also exclude the `tmp`, `log` and `storage` directories from being inspected.
  Working on a Rails application, especially the `tmp` directory fills up over time and slows down linting the project enormously. Same goes for the `storage` directory: here rubocop also has to dig through deeply nested folder structures.
  Note: rubocop's "default" configuration also ignores the `tmp` directory.

## `1.3.0` (2018-10-22)

This release is a maintenance release. Most notably it let's us be compatile with rubocop versions >= 0.56 again. For a full list of changes, see the link or summary below.

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.2.1...v1.3.0

### New features:

* added `staging` to the list of known environments
* enforce frozen_string_literal comment

### Fixes:

* between rubocop version 0.55 and 0.56 we stopped processing most files because we overwrote `AllCops/Include`.
  This is fixed, but requires a rubocop version of 0.56 or higher.
* we have a more detailed changelog which is conform with our changelog-style of other projects

## `1.2.1` (2018-03-22)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.2.0...v1.2.1

### Potentially breaking changes:

* exclude spec/features from the `RSpec/ExampleLength` cop

### Fixes

* ignore `node_modules` and `vendor/bundle` from being inspected

## `1.2.0` (2018-02-07)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.1.2...v1.2.0

### Fixes:

* The cop `Layout/SpaceInsideBrackets` was deprecated and split into two sub-cops:
  * `Layout/SpaceInsideArrayLiteralBrackets`
  * and `Layout/SpaceInsideReferenceBrackets`

## `1.1.2` (2017-10-23)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.1.1...v1.1.2

### Potentially breaking changes:

* Changed to nested module style see: https://github.com/bitcrowd/rubocop-bitcrowd/pull/4


## `1.1.1` (2017-09-21)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.1.0...v1.1.1

### Fixes:

* exclude db/schema.rb from being evaluated
* the cop `Style/SpaceInsideBrackets` was renamed to `Layout/SpaceInsideBrackets`

## `1.1.0` (2017-09-21)

https://github.com/bitcrowd/rubocop-bitcrowd/compare/695fb551bcd1e17a12f80e34c9bbcb842cee35ea...v1.1.1

* First official release
