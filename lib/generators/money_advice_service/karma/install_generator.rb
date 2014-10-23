module MoneyAdviceService
  module Karma
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_application_spec_helper
        template 'application_spec.js', 'spec/javascripts/application_spec.js'
      end

      def create_karma_config_file
        template 'karma.conf.js', 'spec/javascripts/karma.conf.js'
      end

      def create_package_json_file
        template 'package.json', 'package.json'
      end
    end
  end
end
