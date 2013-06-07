class CreateJiapus < ActiveRecord::Migration
  def change
    create_table :jiapus do |t|
      t.string :owner_id
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
