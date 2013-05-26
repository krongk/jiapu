class ResourceCate < ActiveRecord::Base
  belongs_to :user
  has_many :resource_items
  attr_accessible :source_name, :source_type

  before_create :assign_user

  private
  def assign_user
    if self.user_id.nil?
      self.user_id = User.current_user.id if User.current_user
    end
  end
end
