class CreateResourceCates < ActiveRecord::Migration
  def change
    create_table :resource_cates do |t|
      t.references :user
      t.string :source_type
      t.string :source_name

      t.timestamps
    end
    add_index :resource_cates, :user_id
    add_index :resource_cates, [:user_id,:source_type]
  end
end
