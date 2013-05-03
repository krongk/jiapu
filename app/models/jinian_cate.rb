class JinianCate < ActiveRecord::Base
  attr_accessible :body, :note_date, :parent_id, :title, :user_id
  belongs_to :user
  has_many :jinian_items

  #self join
  has_many :sub_cates, :class_name => "JinianCate", :foreign_key => "parent_id"

end
