require 'konacha'
require 'capybara/poltergeist'

module MAS
  module DevelopmentDependencies
    module Konacha
      class Railtie < Rails::Railtie
        initializer 'mas.konacha.environment', before: 'konacha.environment' do
          config.konacha.driver = :poltergeist
        end

        generators do
          require File.expand_path('../../../generators/konacha/install', __FILE__)
        end

        rake_tasks do
          namespace 'spec' do
            desc 'Run the code examples in spec/javascript'
            task :javascript => :environment do
              exit 1 unless ::Konacha.run
            end
          end

          task(:spec).enhance ['spec:javascript']
        end
      end if defined?(Rails::Railtie)
    end
  end
end
