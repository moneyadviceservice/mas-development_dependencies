require 'rspec/rails'
require 'shoulda-matchers'
require 'timecop'

Time.zone = 'Europe/London'

# path relative to the Dummy app, which is by convention at spec/dummy
Dir[Rails.root.join('./../support/**/*.rb')].each { |f| require f }
Dir[Rails.root.join('./../factories/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods if defined?(FactoryGirl)
  config.include Devise::TestHelpers, :type => :controller if defined?(Devise)
  config.include Rails.application.routes.url_helpers

  config.use_transactional_fixtures                       = true if defined?(ActiveRecord)
  config.infer_base_class_for_anonymous_controllers       = false
  config.order                                            = 'random'
  config.treat_symbols_as_metadata_keys_with_true_values  = true
  config.run_all_when_everything_filtered                 = true
  config.filter_run :focus

  config.before(:each) do
    I18n.locale = :en
  end

  config.after(:each) do
    Timecop.return
  end
end