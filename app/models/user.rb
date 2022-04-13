class User < ApplicationRecord
  # Validations
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 150 }
  validates :email, length: { maximum: 256 }
  validates :doc_type, length: { maximum: 20 }
  validates :doc_number, length: { maximum: 30 }
  validates :country, length: { maximum: 2 }

  # Associations
  has_many :students
  
end
