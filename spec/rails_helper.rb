ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'webmock/rspec'
# Add additional requires below this line. Rails is not loaded until this point!

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.filter_rails_from_backtrace!
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end

WebMock.disable_net_connect!
