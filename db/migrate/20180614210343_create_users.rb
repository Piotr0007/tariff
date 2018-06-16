class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string "name", :limit=>15
      t.string "lastname", :limit=>30
      t.string "email", :limit=>30, :null=>false
      t.integer "phone", :limit=>15, :null=>false
      t.string "password_digest"
      t.timestamps
    end
    add_index("users", "id")
  end
  def down
  	down_table :users
  end
end

