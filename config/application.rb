require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'sprockets/es6'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InterConn
  class Application < Rails::Application
    # Generators configuration.
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = ENV.fetch('TIME_ZONE')

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :it
    config.i18n.available_locales = [:en, :it]

    # ActionMailer SMTP configuration.
    config.action_mailer.smtp_settings = {
      address: 'smtp.sendgrid.net',
      port: 587,
      domain: ENV.fetch('SENDGRID_DOMAIN'),
      authentication: 'plain',
      enable_starttls_auto: true,
      user_name: ENV.fetch('SENDGRID_USER'),
      password: ENV.fetch('SENDGRID_PASS')
    }

    # ActionMailer's URL generation configuration.
    config.action_mailer.default_url_options = {
      host: ENV.fetch('HOST'),
      protocol: (ENV.fetch('FORCE_SSL') == 'true') ? 'https' : 'http'
    }

    # Raise mail delivery errors-
    config.action_mailer.raise_delivery_errors = true

    # Require belongs_to association to be present.
    config.active_record.belongs_to_required_by_default = true

    # Enable per-form CSRF tokens.
    config.action_controller.per_form_csrf_tokens = true

    # Check HTTP Origin header to mitigate against CSRF attacks.
    config.action_controller.forgery_protection_origin_check = true

    # Dump the schema in SQL rather than Ruby.
    config.active_record.schema_format = :sql
  end
end
