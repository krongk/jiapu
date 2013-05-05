class ToolAcountsController < InheritedResources::Base
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

  end

  def edit_password
    @tool_acount = current_user.tool_acount || ToolAcount.new
  end

  private
  def tool_login_required
    !!session[:tool_acount]
  end
end
