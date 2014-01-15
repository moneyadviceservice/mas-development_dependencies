require 'guard'
require 'guard/livereload'
require 'guard/rspec'
require 'guard/sass'

module MAS
  module DevelopmentDependencies
    module Guard
      class Railtie < Rails::Railtie
        generators do
          require File.expand_path('../../../generators/guard/install', __FILE__)
        end

        initializer 'mas.rack.live_reload' do |app|
          require 'rack-livereload'

          app.middleware.use Rack::LiveReload
        end
      end if defined?(Rails::Railtie)
    end
  end
end
