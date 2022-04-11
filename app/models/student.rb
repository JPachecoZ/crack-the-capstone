class Student < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :enrollments

  # Validations
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
end
