class Note < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user, :body, :image_path, :note_date, :title

  validates :title, :presence => true
  validates :user, :presence => true
  validates :body, :presence => true
end
