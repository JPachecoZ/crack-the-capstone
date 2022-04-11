class Course < ApplicationRecord
  # Associations
  has_many :groups
  
  # Validations
  validates :name, uniqueness: true

end
