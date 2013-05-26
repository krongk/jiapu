#encoding: utf-8
class CreateResourceItems < ActiveRecord::Migration
  def change
    create_table :resource_items do |t|
      t.references :user
      t.references :resource_cate
      t.string :resource_type, :default => '默认'
      t.string :resource_name
      t.string :resource_path
      t.text :resource_note

      t.timestamps
    end
    add_index :resource_items, :user_id
    add_index :resource_items, [:user_id, :resource_cate_id]
    add_index :resource_items, [:user_id, :resource_type]
  end
end
