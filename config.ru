require 'bundler'

ENV['RACK_ENV'] ||= 'development'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require File.dirname(__FILE__) + '/app'

run TrackerApp
