class JinianItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :jinian_cate
  attr_accessible :body, :note_date, :title, :upload_id, :user_id

  before_create :assign_user

  private
  def assign_user
  	if self.jinian_cate_id.nil?
  		self.jinian_cate_id = 1
  	end
  	
  	if self.user_id.nil?
  		self.user_id = User.current_user.id if User.current_user
  	end
  end
end
