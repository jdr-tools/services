require 'bundler'
Bundler.require :test

require 'arkaan/specs'

service = Arkaan::Utils::MicroService.instance
  .register_as('services')
  .from_location(__FILE__)
  .in_test_mode

Arkaan::Specs.include_shared_examples