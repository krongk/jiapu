class HuiyiCate < ActiveRecord::Base
  belongs_to :user
  has_many :huiyi_items
  attr_accessible :title, :user
end
