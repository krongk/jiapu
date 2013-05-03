class CreateToolAcounts < ActiveRecord::Migration
  def change
    create_table :tool_acounts do |t|
      t.references :user
      t.string :name
      t.string :password
      t.string :password_tips
      t.string :email
      t.string :note

      t.timestamps
    end
    add_index :tool_acounts, :user_id
  end
end
