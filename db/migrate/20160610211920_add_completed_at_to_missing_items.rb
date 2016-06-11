class AddCompletedAtToMissingItems < ActiveRecord::Migration
  def change
    add_column :missing_items, :completed_at, :datetime
  end
end
