class CreateToreadItems < ActiveRecord::Migration[5.0]
  def change
    create_table :toread_items do |t|
      t.string :title
      t.string :url
      t.references :toread_list, foreign_key: true
    end
  end
end
