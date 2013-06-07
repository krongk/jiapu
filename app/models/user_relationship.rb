class UserRelationship < ActiveRecord::Base
  belongs_to :jiapu
  belongs_to :user_info
  attr_accessible :user_info_id, :jiapu_id, :related_user_info_id, :relation_type
end
