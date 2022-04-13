class Student < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :enrollments

  # Validations
  validates :first_name, :last_name, presence: true
  validates :first_name, uniqueness: { scope: :user_id }
  validates :first_name, lenght: { maximum: 30 }
  validates :last_name, lenght: { maximum: 150 }
  validates :email, lenght: { maximum: 256 }
  validates :moodle_password, length: { maximum: 128 }
  validates :goodle_password, length: { maximum: 128 }

end
