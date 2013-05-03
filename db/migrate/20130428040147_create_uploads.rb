class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :user_id
      t.string :resource_type
      t.integer :resource_id
      t.string :upload_file_name
      t.string :upload_content_type
      t.string :upload_file_size
      t.datetime :upload_updated_at

      t.timestamps
    end
  end
end
