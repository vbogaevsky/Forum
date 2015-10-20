class CreateTopicks < ActiveRecord::Migration
  def change
    create_table :topicks do |t|
      t.string :theme, null: false
      t.integer :post_id, null: false
      t.integer :user_id, null: false 
      t.timestamps null: false
    end
  end
end
