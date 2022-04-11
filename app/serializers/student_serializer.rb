class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthdate, :email

  has_many :enrollments
end
