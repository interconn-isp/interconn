class Ticket < ApplicationRecord
  validates :full_name, presence: true
  validates :email, presence: true, format: { with: /@/ }
  validates :subject, presence: true
  validates :body, presence: true, length: { minimum: 30 }
end
