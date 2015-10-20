class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.string :topick_id
      t.timestamps null: false
    end
  end
end
