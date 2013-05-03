class CreateZuopinItems < ActiveRecord::Migration
  def change
    create_table :zuopin_items do |t|
      t.references :user, :null => false
      t.references :zuopin_cate, :null => false
      t.string :title, :null => false
      t.text :body, :null => false

      t.timestamps
    end
    add_index :zuopin_items, :user_id
    add_index :zuopin_items, :zuopin_cate_id
  end
end
