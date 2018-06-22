class AddEmailToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :email, :string
    add_index :drivers, :email
  end
end
