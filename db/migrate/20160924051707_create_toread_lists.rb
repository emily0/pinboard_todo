class CreateToreadLists < ActiveRecord::Migration[5.0]
  def change
    create_table :toread_lists do |t|
      t.string :title

      
    end
  end
end
