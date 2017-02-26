class SorceryExternal < ActiveRecord::Migration[5.0]
  def change
    create_table :authentications do |t|
      t.integer :user_id, :null => false
      t.string :provider, :uid, :null => false

      t.timestamps
    end
  end
end
