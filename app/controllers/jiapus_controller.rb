class JiapusController < InheritedResources::Base
  before_filter :authenticate_user!
  def create
    create! { user_jiapu_path(current_user)}
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
end
