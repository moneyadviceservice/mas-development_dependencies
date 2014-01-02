require 'rspec/rails'
require 'shoulda-matchers'
require 'timecop'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods if defined?(FactoryGirl)
  config.include Devise::TestHelpers, :type => :controller if defined?(Devise)
  config.include Rails.application.routes.url_helpers

  config.use_transactional_fixtures                       = true
  config.infer_base_class_for_anonymous_controllers       = false
  config.order                                            = 'random'
  config.treat_symbols_as_metadata_keys_with_true_values  = true
  config.run_all_when_everything_filtered                 = true
  config.filter_run :focus
end