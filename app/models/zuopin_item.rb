class ZuopinItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :zuopin_cate
  attr_accessible :body, :title, :user, :zuopin_cate, :zuopin_cate_id

  before_create :assign_user

  private
  def assign_user
  	if self.user_id.nil?
  		self.user_id = User.current_user.id if User.current_user
  	end
  end
end
