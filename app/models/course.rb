class Course < ApplicationRecord

  #Validations
  validates :name, uniqueness: true
end
