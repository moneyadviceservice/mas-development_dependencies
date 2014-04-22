

module MAS
  module DevelopmentDependencies
    module Karma
      class Railtie < Rails::Railtie

        generators do
          require File.expand_path('../../../generators/karma/install', __FILE__)
        end

        rake_tasks do
          namespace :karma  do
            desc 'Run the karma tests continuously'
            task :run => :environment do
              with_tmp_config :start
            end

            desc 'Run the karma tests once'
            task :run_once => :environment do
              with_tmp_config :start, "--single-run"
            end



            def with_tmp_config(command, args = nil)
              Tempfile.open('karma_unit.js', Rails.root.join('tmp') ) do |f|
                f.write unit_js(application_spec_files)
                f.flush

                system "./node_modules/.bin/karma #{command} #{f.path} #{args}"
              end
            end

            def application_spec_files
              sprockets = Rails.application.assets
              sprockets.append_path Rails.root.join("spec/javascripts")
              files = Rails.application.assets.find_asset("application_spec.js").to_a.map {|e| e.pathname.to_s }
            end

            def unit_js(files)
              unit_js = File.open('spec/javascripts/karma.conf.js', 'r').read

              unit_js.gsub "APPLICATION_SPEC", "\"#{files.join("\",\n\"")}\""
            end

          end


        end
      end if defined?(Rails::Railtie)
    end
  end
end
