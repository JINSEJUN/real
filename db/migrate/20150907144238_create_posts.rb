class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :email
      t.string :sex
      t.string :univ
      t.string :post_univ
      t.string :post_univ_other
      t.string :number
      t.string :post_password
      t.text :post_content
      
      t.string :passwd_check
      

      t.timestamps null: false
    end
  end
end
