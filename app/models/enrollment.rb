class Enrollment < ApplicationRecord
  belongs_to :group
  belongs_to :course
  belongs_to :student
end
