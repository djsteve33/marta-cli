
require 'bundler/setup'
Bundler.require(:default)

require 'dotenv/load'

require_relative './marta_cli/api.rb'
require_relative './marta_cli//marta.rb'
require_relative './marta_cli//cli.rb'