class Group < ApplicationRecord
  # Associations
  belongs_to :course
  has_many :enrollments

end
