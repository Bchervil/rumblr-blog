class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "username"
      t.string "password"
      t.string "passowrd_hash"
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.datetime "birthday"
      t.datetime "created_at"
      t.string "image_url"
    end
  end
end
