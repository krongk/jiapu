class ZuopinCate < ActiveRecord::Base
  belongs_to :user
  has_many :zuopin_items
  attr_accessible :title, :cate, :user

  before_create :assign_user

  private
  def assign_user
  	if self.user_id.nil?
  		self.user_id = User.current_user.id if User.current_user
  	end
  end

end
