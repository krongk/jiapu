class Page < ActiveRecord::Base
	attr_accessible :title, :body, :path_name, :meta_keywords, :meta_description, :deletable
end