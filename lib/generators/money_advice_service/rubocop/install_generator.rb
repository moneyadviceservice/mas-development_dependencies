module MoneyAdviceService
  module Rubocop
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc 'Install rubocop config file'

      def copy_config_file
        copy_file 'rubocop.yml', '.rubocop.yml'
      end
    end
  end
end
