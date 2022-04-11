class User < ApplicationRecord
  # Validations
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
#  validates :first_name, :last_name, :doc_type, :doc_number, :country, presence: true

  # Associations
  has_many :students
  
end
