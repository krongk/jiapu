class CreateToolItems < ActiveRecord::Migration
  def change
    create_table :tool_items do |t|
      t.references :user
      t.string :title
      t.string :name
      t.string :password
      t.string :password_tips
      t.string :note

      t.timestamps
    end
    add_index :tool_items, :user_id
  end
end
