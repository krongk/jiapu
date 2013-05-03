class CreateJinianItems < ActiveRecord::Migration
  def change
    create_table :jinian_items do |t|
      t.references :jinian_cate
      t.integer :user_id
      t.integer :upload_id
      t.string :title
      t.text :body
      t.date :note_date

      t.timestamps
    end
    add_index :jinian_items, :jinian_cate_id
  end
end
