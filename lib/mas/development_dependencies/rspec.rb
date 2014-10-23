module MAS
  module DevelopmentDependencies
    module RSpec
      class Railtie < Rails::Railtie
        rake_tasks do
          require 'rspec/rails'
          load 'rspec/rails/tasks/rspec.rake'
        end
      end if defined?(Rails::Railtie)
    end
  end
end
