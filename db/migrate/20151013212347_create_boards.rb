class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :board_name
      t.string :topick_id
      t.timestamps null: false
    end
  end
end
