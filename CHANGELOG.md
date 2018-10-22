# Rubocop Bitcrowd Changelog

Presented in reverse chronological order.

## master

https://github.com/bitcrowd/rubocop-bitcrowd/compare/v1.2.1...HEAD

* Put high-level summary here

### Deprecations:

* Put deprecations here

### Potentially breaking changes:

* Put potentially breaking changes here

### New features:

* added `staging` to the list of known environments
* enforce frozen_string_literal comment
* Put new features here

### Fixes:

* between rubocop version 0.55 and 0.56 re stopped processing most files because we overwrote `AllCops/Include`.
  This is fixed, but requires a rubocop version of 0.56 or higher.
* Put fixes here
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

