class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount_usd, :amount_pen, :final_project_description, :project_summary

  has_many :groups
end
