require 'bundler'
Bundler.require(ENV['RACK_ENV'].to_sym || :development)

service = Arkaan::Utils::MicroService.instance
  .register_as('services')
  .from_location(__FILE__)
  .in_standard_mode

map(service.path) { run Controllers::Services.new }
