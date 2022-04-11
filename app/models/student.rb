class Student < ApplicationRecord
  belongs_to :user

  #Validations
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
end
