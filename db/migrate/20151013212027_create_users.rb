class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle, null: false
      t.string :email, null: false
      t.string :avatar
      t.string :password_digest, null: false
      t.integer :post_id
      t.integer :posts_count
      t.integer :topick_id
      t.boolean :moderator, null: false, default: false
     	t.boolean :admin, null: false, default: false
      t.timestamp :updated_at, null: false
      t.timestamps null: false
    end
  end
end
