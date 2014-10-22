module MAS
  module DevelopmentDependencies
    module Rubocop
      class Railtie < Rails::Railtie
        generators do
          require File.expand_path('../../../generators/money_advice_service/rubocop/install', __FILE__)
        end
      end if defined?(Rails::Railtie)
    end
  end
end

