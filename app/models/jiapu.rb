class Jiapu < ActiveRecord::Base
  belongs_to :user

  has_many :user_relationships
  has_many :user_infos, :through => :user_relationships

  attr_accessible :user_id, :name, :note

  after_create :assign_user_relationship

  def assign_user_relationship
  	user_info = User.current_user.user_info if User.current_user
  	UserRelationship.create!(:jiapu_id => self.id, :user_info_id => user_info.id) if user_info
  end
end
