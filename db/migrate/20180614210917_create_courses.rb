class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer "each_people"
      t.string  "from_to"
      t.string  "adress"
  	  add_foreign_key :driver_id, :User_name, 

      t.timestamps
    end
  end
end