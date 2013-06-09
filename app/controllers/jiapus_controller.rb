#encoding: utf-8
class JiapusController < InheritedResources::Base
  before_filter :authenticate_user!
  def create
    create! { user_path(current_user)}
  end

  def show
    @jiapu = Jiapu.find(params[:id])
    @jiapu ||= current_user.jiapus.first
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

  def create_member
    redirect_to user_jiapu_path(current_user, current_user.jiapus.first), notice: "添加成功!"
  end
end
