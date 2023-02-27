ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite3"
)
# ENV["RACK_ENV"] ||= "development"

# require "bundler/setup"
# Bundler.require(:default, ENV["RACK_ENV"])

require_all 'lib/models'
