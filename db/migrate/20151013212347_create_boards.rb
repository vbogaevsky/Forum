class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.text :board_name, null: false
      t.integer :topick_id
      t.timestamps null: false
    end
  end
end
