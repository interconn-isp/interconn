source 'https://rubygems.org'
ruby '2.3.1'

# Rails
gem 'rails', '4.2.6'
gem 'rails-i18n'

# Asset processing
gem 'sass-rails'
gem 'autoprefixer-rails'
gem 'uglifier'
gem 'coffee-rails'

# Assets
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'jquery-turbolinks'
gem 'font-awesome-rails'
gem 'nprogress-rails'

# ActiveRecord
gem 'pg'

# Deployment
gem 'foreman'
gem 'puma'
gem 'figaro'

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
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'haml_lint', require: false
  gem 'scss_lint', require: false
  gem 'coffeelint'
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
end

group :production do
  # Heroku
  gem 'rails_12factor'

  # Logging
  gem 'lograge'
end
