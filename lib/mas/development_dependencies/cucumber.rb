module MAS
  module DevelopmentDependencies
    module Cucumber
      class Railtie < Rails::Railtie
        generators do
          require File.expand_path('../../../generators/cucumber/install', __FILE__)
        end

        rake_tasks do
          require 'cucumber/rake/task'

          namespace :cucumber do
            ::Cucumber::Rake::Task.new({ ok: 'test:prepare' },
                                       'Run features that should pass') do |t|
              t.fork    = true # You may get faster startup if you set this to false
              t.profile = 'default'
            end

            ::Cucumber::Rake::Task.new({ wip: 'test:prepare' },
                                       'Run features that are being worked on') do |t|
              t.fork    = true # You may get faster startup if you set this to false
              t.profile = 'wip'
            end

            ::Cucumber::Rake::Task.new({ rerun: 'test:prepare' },
                                       'Record failing features and run only them if any exist') do |t|
              t.fork    = true # You may get faster startup if you set this to false
              t.profile = 'rerun'
            end

            desc 'Run all features'
            task :all => [:ok, :wip]
          end

          # In case we don't have the generic Rails test:prepare hook, append a
          # no-op task that we can depend upon.
          task 'test:prepare' do
          end

          desc 'Alias for cucumber:ok'
          task cucumber: 'cucumber:ok'

          task default: :cucumber
        end
      end if defined?(Rails::Railtie)
    end
  end
end
