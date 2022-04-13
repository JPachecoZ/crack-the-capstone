class Group < ApplicationRecord
  # Associations
  belongs_to :course
  has_many :enrollments

  # Validations
  validates :name, length: { maximum: 100 }

end
