class CreateJinianCates < ActiveRecord::Migration
  def change
    create_table :jinian_cates do |t|
    	t.references :user, :null => false
      t.integer :parent_id
      t.string :title
      t.text :body
      t.date :note_date

      t.timestamps
    end
  end
end
