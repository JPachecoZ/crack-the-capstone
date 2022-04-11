class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :email
      t.string :moodle_password
      t.string :goodle_password
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
