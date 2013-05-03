class ToolItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :note, :password, :password_tips, :title
end
