class CreateTopicks < ActiveRecord::Migration
  def change
    create_table :topicks do |t|
      t.string :theme, null: false
      t.integer :post_id, null: false
      t.integer :posts_count
      t.integer :user_id, null: false
      t.integer :board_id, null: false
      t.timestamp :updated_at, null: false
      t.timestamps null: false
    end
  end
end
