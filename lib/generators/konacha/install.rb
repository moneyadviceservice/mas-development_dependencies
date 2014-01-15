module MoneyAdviceService
  module Konacha
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_rspec_helper
        template 'spec_helper.js', 'spec/javascripts/spec_helper.js'
      end
    end
  end
end
