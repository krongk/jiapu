class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.references :user
      t.string :xing
      t.string :ming
      t.string :en_name
      t.string :nice_name
      t.integer :gender
      t.date :birth
      t.string :birth_place
      t.string :living_place
      t.string :picture_url
      t.string :email
      t.string :qq
      t.string :phone

      t.timestamps
    end
    add_index :user_infos, :user_id
  end
end
