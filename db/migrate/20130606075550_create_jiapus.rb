class CreateJiapus < ActiveRecord::Migration
  def change
    create_table :jiapus do |t|
      t.references :user
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
