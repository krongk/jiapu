class UserInfo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :birth, :birth_place, :email, :en_name, :gender, :living_place, :ming, :nice_name, :phone, :picture_url, :qq, :xing
end
