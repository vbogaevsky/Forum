class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message, null: false
      t.integer :user_id, null: false
      t.integer :topick_id, null: false
      t.integer :board_id, null: false
      t.timestamp :updated_at, null: false
      t.timestamps null: false
    end
  end
end
