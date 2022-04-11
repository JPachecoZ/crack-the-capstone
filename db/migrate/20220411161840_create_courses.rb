class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.string :set_title
      t.string :seo_meta_description
      t.decimal :amount_usd
      t.decimal :amount_pen
      t.string :final_project_description
      t.string :project_summary

      t.timestamps
    end
  end
end
