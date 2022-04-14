class Course < ApplicationRecord
  # Associations
  has_many :groups
  
  # Validations
  validates :name, uniqueness: true
  validates :slug, length: { maximum: 250 }
  validates :seo_title, length: { maximum: 255 }
  validates :seo_meta_description, length: { maximum: 255 }
  validates :project_summary, length: { maximum: 100 }

end
