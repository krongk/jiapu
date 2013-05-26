class ResourceItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :resource_cate
  attr_accessor :upload_file
  attr_accessible :upload_file, :user, :resource_cate, :resource_cate_id, :resource_name, :resource_note, :resource_path, :resource_type

  before_create :assign_user
 
  def self.type_hash
    {1 => 'picture', 2 => 'file', 3 => 'video', 4 => 'audio', 5 => 'flash'}
  end

  private
  def assign_user
    if self.user_id.nil?
      self.user_id = User.current_user.id if User.current_user
    end
  end

end
