class Ticket < ApplicationRecord
  phony_normalize :phone_number, default_country_code: ENV.fetch('PHONE_COUNTRY_CODE')

  validates :full_name, presence: true
  validates :phone_number, phony_plausible: { allow_blank: true }
  validates :email, presence: true, email: true
  validates :subject, presence: true
  validates :body, presence: true, length: { minimum: 30 }
end
