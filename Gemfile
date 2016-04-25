source 'https://rubygems.org'
ruby '2.3.0'

# Rails
gem 'rails', '4.2.6'

# Asset processing
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'

# Assets
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'

# ActiveRecord
gem 'pg'

# Deployment
gem 'foreman'
gem 'puma'

# Views
gem 'simple_form'
gem 'slim-rails'

group :development, :test do
  # Factories
  gem 'factory_girl_rails'
  gem 'faker'

  # RSpec
  gem 'rspec-rails'
end

group :development do
  # Preloading
  gem 'spring'
  gem 'spring-commands-rspec'

  # Logging
  gem 'quiet_assets'

  # Debugging
  gem 'pry-rails'
  gem 'pry-rescue'

  # Code style
  gem 'rubocop'
  gem 'rubocop-rspec'
end

group :test do
  # Acceptance testing
  gem 'capybara'
  gem 'launchy'
  gem 'selenium-webdriver'

  # Database cleansing
  gem 'database_cleaner'

  # RSpec
  gem 'fuubar'
end

group :production do
  # Heroku
  gem 'rails_12factor'
end
