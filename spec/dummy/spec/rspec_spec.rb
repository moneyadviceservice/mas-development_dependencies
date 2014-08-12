require_relative './spec_helper'

describe 'RSpec development support with Rails' do
  it 'configures rspec rails correctly' do
    rspec_config = RSpec.configuration

    expect(rspec_config.infer_base_class_for_anonymous_controllers).to be_falsey
    expect(Time.zone).to satisfy {|tz| tz =~ 'London'}
  end
end
