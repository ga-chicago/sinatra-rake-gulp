require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

# Require controllers and middleware
require './app/controllers/application_controller'
require './app/controllers/home_controller'

map('/') { run HomeController }
