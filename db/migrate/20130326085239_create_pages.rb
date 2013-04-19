
# C:\Sites\jiapu>rails g scaffold page title:string body:text path_name:string met
# a_keywords:string meta_description:string deletable:integer

class CreatePages < ActiveRecord::Migration
  def change
    create_table(:pages) do |t|

      t.string :title,              :null => false, :default => ""
      t.text :body    

      t.string   :path_name
      t.string   :meta_keywords
      t.string   :meta_description
      t.integer  :deletable,        :default => 0

      t.timestamps
    end

    add_index :pages, :path_name,   :unique => true

  end
end
