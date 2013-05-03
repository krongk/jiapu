class CreateHuiyiItems < ActiveRecord::Migration
  def change
    create_table :huiyi_items do |t|
      t.references :user, :null => false
      t.references :huiyi_cate, :null => false
      t.date :note_date, :null => false
      t.string :title, :null => false
      t.text :body

      t.timestamps
    end
    add_index :huiyi_items, :user_id
    add_index :huiyi_items, :huiyi_cate_id
  end
end
