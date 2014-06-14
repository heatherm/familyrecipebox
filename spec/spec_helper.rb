ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = true
  config.infer_spec_type_from_file_location!

  config.register_ordering(:global) do |items|
    features, others = items.partition { |g| g.metadata[:type] == :feature }
    others.shuffle + features
  end

  config.before :each do
    DatabaseCleaner.strategy = :transaction
  end

  config.before :each, truncation: true do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.include Sorcery::TestHelpers::Rails
end