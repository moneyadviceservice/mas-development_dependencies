module MoneyAdviceService
  module Guard
    class Install < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_guardfile
        template 'Guardfile', 'Guardfile'
      end
    end
  end
end
