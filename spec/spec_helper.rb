# spec/spec_helper.rb
ENV['RACK_ENV'] = 'test'

require 'rack/test'

require_relative File.join('..', 'app')

dirs_to_require = [
  File.join('app', 'models'),
  File.join('app', 'routes'),
  File.join('app', 'storages'),
  File.join('app', 'repositories'),
  File.join('app', 'use_cases'),
]

dirs_to_require.each do |dir_to_require|
  Dir["#{dir_to_require}/*.rb"].each {|file| require_relative "../#{file}" }
end

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    TrackerApp
  end
end
