class CreateMd5s < ActiveRecord::Migration[6.0]

  def up
    create_table :md5s do |t|
      t.text "userString"
      t.string "userHash"
      t.string "userId", :null => true
      t.string "userIp", :null => true
      t.timestamps
    end
    add_index("md5s", "userString")
  end

  def down
  	drop_table :md5s
  end

end
