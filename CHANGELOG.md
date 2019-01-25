# Rubocop-Bitcrowd Changelog

Presented in reverse chronological order.

## master

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.3.0...HEAD

*Put high-level summary here before releasing a new version*

### Deprecations:

* Put deprecations here (in a brief bullet point)

### Potentially breaking changes:

* Put potentially breaking changes here (in a brief bullet point)

### New features:

* Put new features here (in a brief bullet point)

### Fixes:

* Put fixes here (in a brief bullet point)
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
