class CreateUnivs < ActiveRecord::Migration
  def change
    create_table :univs do |t|


  t.string :univ
  t.string :univ_img
  t


      t.timestamps null: false
    end
  end
end
