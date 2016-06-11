class CreateMissingItems < ActiveRecord::Migration
  def change
    create_table :missing_items do |t|
      t.string :content
      t.references :missing_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
