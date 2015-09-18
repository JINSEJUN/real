class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :email
      t.string :age
      t.string :img
      t.string :sex
      t.string :univ
      t.string :place
      t.string :number
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
