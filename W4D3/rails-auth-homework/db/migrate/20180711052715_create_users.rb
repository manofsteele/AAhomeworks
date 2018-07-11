class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :password, allow_nil: true
      t.string :password_digest, allow_nil: true
      t.string :session_token, null: false, unique: true

      t.timestamps

    end
    add_index :users, :session_token, unique: true

  end
end
