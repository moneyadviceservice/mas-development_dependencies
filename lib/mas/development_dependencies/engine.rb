require 'rails'

module MAS
  module DevelopmentDependencies
    class Engine < ::Rails::Engine
      isolate_namespace MAS::DevelopmentDependencies
    end
  end
end
