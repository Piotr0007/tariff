class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string "name", :limit=>15
      t.string "lastname", :limit=>30
      t.date "brithday"
      t.string "id_card_driver", :limit=>10
      t.string "nationality", :limit=>30
      t.string "password_digest"

      t.timestamps
    end
  end
end