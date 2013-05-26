#encoding: utf-8
class ToolAcountsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :tool_login_required, :except => [:login]
  
  def create
    create! { user_tool_items_path(current_user)}
  end

  def update
    update! { user_tool_items_path(current_user)}
  end

  # def destroy
  #   destroy! { user_jinian_cate_path(current_user, @jinian_cate)}
  # end

  def login
    if params[:password].blank?
      return
    end
    
    if session[:tool_acount]
      flash[:notice] = "已登录保险箱"
      redirect_to user_tool_items_path(current_user)
      return
    end
    
    if current_user && current_user.tool_acount && !params[:password].blank? && current_user.tool_acount.password == params[:password]
      session[:tool_acount] = current_user.tool_acount
      flash[:notice] = "密码箱登录成功！"
      redirect_to user_tool_items_path(current_user)
    else
      flash[:error] = "密码箱登录失败！请检查密码是否正确。"
    end
  end

  def edit_password
    @tool_acount = current_user.tool_acount || ToolAcount.new
  end

  private
  def tool_login_required
    !!session[:tool_acount]
  end
end
