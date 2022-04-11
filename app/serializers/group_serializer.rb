class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :enrollments
end
