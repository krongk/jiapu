#encoding: utf-8
class UserInfosController < InheritedResources::Base
	before_filter :authenticate_user!
	def create
		upload_file
		create! { user_user_info_path(current_user)}
	end

	def update
		upload_file
		update! { user_user_info_path(current_user)}
	end

	def destroy
		destroy! { user_user_info_path(current_user)}
	end

	def upload_file
		return if params[:user_info][:picture_url].blank?
    tmp = params[:user_info][:picture_url].tempfile
    unless (file_ext = params[:user_info][:picture_url].original_filename.split('.')).size > 1
      render :text => '错误的文件扩展名！<br/><a href="javascript: history.go(-1);">返回</a>'
      return
    end
    file_name = "#{Time.now.to_i}.#{file_ext.last.downcase}"
    file_path = File.join("public", "user_info", 'picture_url', '0')
    unless File.exist?(file_path)
      FileUtils.mkdir_p file_path
    end
    #public/user_info/picture_url/2/1304543534.jpg
    file = File.join(file_path, file_name)
    FileUtils.cp tmp.path, file
    #FileUtils.rm tmp.path
    
    #/resource/picture/2/1304543534.jpg
    params[:user_info][:picture_url] = file.sub(/^public/,'')
	end
end
