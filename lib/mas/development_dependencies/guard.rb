require 'guard/sass'
require 'guard/livereload'

module Guard
  class Dsl
    MAS_DEFINITIONS = [:sass, :livereload]
    def mas_guard(*args)
      if args.empty?
        MAS_DEFINITIONS.each do |definition|
          send definition
        end
      else
        args.each do |definition|
          next unless MAS_Guard::DEFINITIONS.include?(definition.to_sym)
          send definition
        end
      end
    end

    private
    def sass
      guard 'sass', input: 'app/assets/stylesheets', output: 'public/stylesheets'
    end

    def livereload
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
