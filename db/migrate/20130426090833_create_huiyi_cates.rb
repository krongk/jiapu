class CreateHuiyiCates < ActiveRecord::Migration
  def change
    create_table :huiyi_cates do |t|
      t.references :user, :null => false
      t.string :title, :null => false

      t.timestamps
    end
    add_index :huiyi_cates, :user_id
  end
end
