require 'shoulda-matchers'
require 'timecop'
require 'mas/development_dependencies/rspec/rails_helper' if defined?(Rails)

# this seems to be required for the CI to work properly
ENV['TZ'] = 'Europe/London'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods if defined?(FactoryGirl)
  config.include Devise::TestHelpers, :type => :controller if defined?(Devise)

  config.use_transactional_fixtures                       = true if defined?(ActiveRecord)
  config.order                                            = 'random'
  config.treat_symbols_as_metadata_keys_with_true_values  = true
  config.run_all_when_everything_filtered                 = true

  config.infer_spec_type_from_file_location! if config.respond_to?(:infer_spec_type_from_file_location!)

  config.before(:each) do
    I18n.locale = :en if defined?(I18n)
  end

  config.after(:each) do
    Timecop.return
  end
end
