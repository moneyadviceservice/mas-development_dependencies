require 'cucumber/rails'
require 'capybara'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'capybara/poltergeist'
require 'timecop'

ActionController::Base.allow_rescue = false

if defined?(ActiveRecord)
  DatabaseCleaner.strategy                      = :transaction
  Cucumber::Rails::Database.javascript_strategy = :truncation
else
  Cucumber::Rails::Database.autorun_database_cleaner = false
end

Capybara.javascript_driver = :poltergeist


