class CreateTopicks < ActiveRecord::Migration
  def change
    create_table :topicks do |t|

      t.timestamps null: false
    end
  end
end
