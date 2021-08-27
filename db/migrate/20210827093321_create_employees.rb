class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.float :salary
      t.date :dob

      t.timestamps
    end
  end
end
