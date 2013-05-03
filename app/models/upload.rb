class Upload < ActiveRecord::Base
  attr_accessible :upload, :resource_id
  #has_attached_file :upload
  has_attached_file :upload, :styles => { :medium => "600x600>", :thumb => "100x100>" }, :default_url => "/assets/missing.png"
  
  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      "name" => read_attribute(:upload_file_name),
      "size" => read_attribute(:upload_file_size),
      "url" => upload.url(:original),
      "delete_url" => upload_path(self),
      "delete_type" => "DELETE" 
    }
  end
end
