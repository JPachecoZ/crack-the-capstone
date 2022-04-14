class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.string :seo_title
      t.string :seo_meta_description
      t.decimal :amount_usd, precision: 6, scale: 2
      t.decimal :amount_pen, precision: 6, scale: 2
      t.string :final_project_description
      t.string :project_summary

      t.timestamps
    end
  end
end
