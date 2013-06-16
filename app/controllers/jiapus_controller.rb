#encoding: utf-8
class JiapusController < InheritedResources::Base
  include ApplicationHelper
  before_filter :authenticate_user!
  def create
    create! { user_path(current_user)}
  end

  def show
    @jiapu = Jiapu.find(params[:id])
    @jiapu ||= current_user.jiapus.first
    @jiapu_user_infos = (@jiapu.user_infos + @jiapu.related_user_infos).compact.uniq
    #for add member
    @user_info = UserInfo.new
  end

  def update
    update! { user_jiapu_path(current_user)}
  end

  def destroy
    destroy! { user_jiapu_path(current_user)}
  end

  def new_member
    @jiapu = Jiapu.find(params[:jiapu_id])
    @user_info = UserInfo.find(params[:user_info_id])
  end

  #{"jiapu_id"=>"12", "user_info_id"=>"9", "relation_type"=>"父亲", 
  # "user_info"=>{"xing"=>"姓", "ming"=>"名", "nice_name"=>"昵称", "birth_place"=>"出生", 
  # => "living_place"=>"居住", "gender"=>"男", "email"=>"mfwef", "phone"=>"mef ", "birth(1i)"=>"1906", "birth(2i)"=>"6", "birth(3i)"=>"9"}}
  def create_member
    upload_file
    ActiveRecord::Base.transaction do
      relation_user_info = UserInfo.create(params[:user_info])
      relation_user_info =relation_user_info.reload

      jiapu = Jiapu.find(params[:jiapu_id])
      current_user_info = UserInfo.find(params[:user_info_id])
      user_relationship = UserRelationship.create(
        :jiapu_id => jiapu.id, 
        :user_info_id => current_user_info.id,
        :relation_type => params[:relation_type],
        :related_user_info_id => relation_user_info.id 
      )
    end
    redirect_to user_jiapu_path(current_user, current_user.jiapus.first), notice: "添加成功!"
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
