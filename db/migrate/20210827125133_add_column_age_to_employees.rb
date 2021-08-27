class AddColumnAgeToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :age, :integer
  end
end
