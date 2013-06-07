class CreateUserRelationships < ActiveRecord::Migration
  def change
    create_table :user_relationships do |t|
      t.references :jiapu
      t.references :user
      t.string :relation_type
      t.integer :related_user_id

      t.timestamps
    end
    add_index :user_relationships, :jiapu_id
    add_index :user_relationships, :user_id
  end
end
