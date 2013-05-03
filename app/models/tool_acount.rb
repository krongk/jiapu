class ToolAcount < ActiveRecord::Base
  belongs_to :user
  attr_accessible :email, :name, :note, :password, :password_tips
end
