source 'https://rubygems.org'

ruby '2.2.2'

gem 'unicorn'
gem 'rack-canonical-host'
gem 'rails', '~> 4.1.1'
gem 'pg'

gem 'slim-rails'
gem 'foundation-rails'
gem 'jquery-rails'
gem 'coffee-rails'
gem 'turbolinks'
gem 'simple_form', '~> 3.1.0.rc1'
gem 'uglifier'
gem 'sorcery'
gem 'aws-sdk'

gem 'awesome_print'

group :production do
  gem 'rails_stdout_logging'
end

group :test do
  gem 'jasminerice', github: 'bradphelan/jasminerice'  # Latest release still depends on haml.
  gem 'capybara'
  gem 'poltergeist'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :test, :development do
  gem 'rspec-rails'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'foreman'
  gem 'launchy'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'rb-fsevent'
  gem 'growl'
end
