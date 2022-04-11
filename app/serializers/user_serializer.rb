class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :doc_type, :doc_number, :country

  has_many :students
end
