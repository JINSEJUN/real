class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :email
      t.string :sex
      t.string :univ
      t.string :place
      t.string :number
      t.text :content

      t.timestamps null: false
    end
  end
end
