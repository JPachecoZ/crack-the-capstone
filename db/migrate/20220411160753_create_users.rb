class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :doc_type
      t.string :doc_number
      t.string :country

      t.timestamps
    end
  end
end
