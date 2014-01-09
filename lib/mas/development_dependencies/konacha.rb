require 'konacha'
require 'capybara/poltergeist'

module MAS
  module DevelopmentDependencies
    class Railtie < Rails::Railtie
      initializer 'mas.konacha.environment', before: 'konacha.environment' do
        config.konacha.driver = :poltergeist
      end
    end if defined?(Rails::Railtie)
  end
end
