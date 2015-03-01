# encoding: utf-8
require 'sinatra/base'
require 'mongoid'
require 'forwardable'

require_relative './app/routes/announce'

class TrackerApp < Sinatra::Base
  use Rack::Logger
  configure :production, :development do
    enable :logging
  end

  Mongoid.load!("config/mongoid.yml")

  register Tracker::Routes::Announce
end
