class ToolAcount < ActiveRecord::Base
  belongs_to :user
  attr_accessible :email, :name, :note, :password, :password_tips

  before_create :assign_user

  private
  def assign_user
    if self.user_id.nil?
      self.user_id = User.current_user.id if User.current_user
    end
  end
end
