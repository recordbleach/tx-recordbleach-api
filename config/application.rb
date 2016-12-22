require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TexasRecordbleachApi
  class Application < Rails::Application

    config.middleware.insert_before 0, Rack::Cors do
         allow do
           origins '*'
           resource '*', :headers => :any, :methods => [:get, :post, :delete, :options]
         end
       end

       Dynopoker.configure do |config|
          config.address = 'http://wakemydyno.com'
        #  config.enable = false # default is true
        #  config.poke_frequency = 123 # default is 1800s (30min)
      end

  end
end
