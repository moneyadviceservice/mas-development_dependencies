module MAS
  module DevelopmentDependencies
    module RSpec
      class Railtie < Rails::Railtie
        generators do
          require File.expand_path('../../../generators/rspec/install', __FILE__)
        end

        rake_tasks do
          require 'rspec/rails'
          load 'rspec/rails/tasks/rspec.rake'
        end
      end if defined?(Rails::Railtie)
    end
  end
end
