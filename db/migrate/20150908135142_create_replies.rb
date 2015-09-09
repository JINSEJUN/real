class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.integer :post_id
      t.string :content
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
