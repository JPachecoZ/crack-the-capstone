class Enrollment < ApplicationRecord
  belongs_to :group
  belongs_to :course
  belongs_to :student

  #Validations
  validates :group_id, uniqueness: { scope: :student_id }
end
