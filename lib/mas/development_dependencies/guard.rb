require 'guard'

module Guard
  class Dsl

    MAS_DEFINITIONS = [:sass, :livereload]

    def mas_guard(*args)
      if args.empty?
        MAS_DEFINITIONS.each { |arg| send arg }
      else
        args.each do |arg|
          unless MAS_DEFINITIONS.include?(arg.to_sym)
            ::Guard::UI.warning("No default MAS configuration for plugin \"#{arg}\"")
            next
          end
          send arg
        end
      end
    end

    private
    def sass
      require 'guard/sass'
      guard 'sass', input: 'app/assets/stylesheets', output: 'public/stylesheets'
    end

    def livereload
      require 'guard/livereload'
      require 'rack-livereload'

      guard 'livereload' do
        watch(%r{^app/.+\.(erb|haml|js|css|scss|sass|coffee|eco|png|gif|jpg)})
        watch(%r{^app/helpers/.+\.rb})
        watch(%r{public/.+\.(css|js|html)})
        watch(%r{^config/locales/.+\.yml})
        # Rails Assets Pipeline
        watch(%r{(app|vendor)(/assets/\w+/(.+\.(erb|haml|js|css|scss|sass|coffee|eco|png|gif|jpg))).*}) { |m| "/assets/#{m[3]}" }
      end
    end
  end
end
