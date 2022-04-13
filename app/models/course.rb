class Course < ApplicationRecord
  # Associations
  has_many :groups
  
  # Validations
  validates :name, uniqueness: true
  validates :slug, lenght: { maximum: 250 }
  validates :seo_title, lenght: { maximum: 255 }
  validates :seo_meta_description, lenght: { maximum: 255 }
  validates :project_summary, lenght: { maximum: 100 }

end
