class CreateShas < ActiveRecord::Migration[6.0]

  def up
    create_table :shas do |t|
      t.text "userString"
      t.string "userHash"
      t.string "userId", :null => true
      t.string "userIp", :null => true
      t.timestamps
    end
    add_index("shas", "userString")
  end

  def down
  	drop_table :shas
  end

end
