source 'https://rubygems.org'
ruby '2.5.0'

# Rails
gem 'rails', '~> 5.1'
gem 'rails-i18n'

# Asset processing
gem 'sass-rails'
gem 'autoprefixer-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'sprockets-es6'

# Asset management
gem 'webpacker'

# Assets
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# ActiveRecord
gem 'pg'
gem 'email_validator'
gem 'phony_rails'

# Deployment
gem 'puma'

# Views
gem 'simple_form'
gem 'hamlit'

# Static pages
gem 'high_voltage'

group :development, :test do
  # Factories
  gem 'factory_girl_rails'
  gem 'faker'

  # RSpec
  gem 'rspec-rails'
  gem 'shoulda-matchers'

  # Orchestration
  gem 'dotenv-rails'
  gem 'foreman'
end

group :development do
  # Preloading
  gem 'spring'
  gem 'spring-commands-rspec'

  # Debugging
  gem 'pry-rails'
  gem 'pry-rescue'

  # Code style
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'haml_lint', require: false
  gem 'scss_lint', require: false
end

group :test do
  # Acceptance testing
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'launchy'

  # Database cleansing
  gem 'database_cleaner'

  # RSpec
  gem 'fuubar'

  # CircleCI
  gem 'rspec_junit_formatter'
end

group :production do
  # Logging
  gem 'lograge'
end
