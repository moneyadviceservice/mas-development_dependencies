module MoneyAdviceService
  module Karma
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_application_spec_helper
        template 'application_spec.js', 'spec/javascripts/application_spec.js'
      end
    end
  end
end
