class UserRelationship < ActiveRecord::Base
  belongs_to :jiapu
  belongs_to :user
  attr_accessible :related_user_id, :relation_type
end
