# encoding: utf-8

module Tracker
  module Routes
    module Announce
      def self.registered(app)

        app.get '/announce' do
          logger.info params
        end

      end
    end
  end
end
