module MoneyAdviceService
  module Cucumber
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_cucumber_config
        template 'config/cucumber.yml', 'config/cucumber.yml'
      end

      def create_cucumber_support
        template 'features/support/env.rb', 'features/support/env.rb'
        template 'features/support/ui/ui.rb', 'features/support/ui/ui.rb'
        template 'features/support/world/pages.rb', 'features/support/world/pages.rb'
      end

      def create_cucumber_step_definitions
        create_file 'features/step_definitions/.keep', ''
      end
    end
  end
end
