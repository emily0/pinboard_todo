class AddCompletedAtToToreadItems < ActiveRecord::Migration[5.0]
  def change
      add_column :toread_items, :completed_at, :datetime
  end
end
