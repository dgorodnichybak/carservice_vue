class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|

      t.string   :token, null: false, uniq: true
      t.datetime :expires_at, null: false
      t.integer  :user_id, null: false

      t.timestamps null: false
    end

    add_index :sessions, :token, unique: true
    add_index :sessions, :user_id, unique: true
  end
end
