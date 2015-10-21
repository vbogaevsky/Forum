class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.string :topick_id
      t.integer :topicks_count
      t.integer :post_id
      t.integer :posts_count
      t.timestamps null: false
    end
  end
end
