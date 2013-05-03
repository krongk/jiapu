class CreateZuopinCates < ActiveRecord::Migration
  def change
    create_table :zuopin_cates do |t|
      t.references :user, :null => false
      t.string :title, :null => false
      t.string :cate, :null => false

      t.timestamps
    end
    add_index :zuopin_cates, :user_id
  end
end
