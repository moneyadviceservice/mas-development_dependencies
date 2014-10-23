module MoneyAdviceService
  module Rspec
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_rspec_helper
        template 'spec_helper.rb', 'spec/spec_helper.rb'
      end
    end
  end
end
