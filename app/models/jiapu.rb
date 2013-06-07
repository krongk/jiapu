class Jiapu < ActiveRecord::Base
  belongs_to :user

  has_many :user_relationships
  has_many :user_infos, :through => :user_relationships

  attr_accessible :user_id, :name, :note

end
