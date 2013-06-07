class Jiapu < ActiveRecord::Base
  attr_accessible :name, :note, :owner_id

  def self.get_jiapu(user)
  	self.where(:owner_id => user.id).first
  end
end
