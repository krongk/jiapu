#encoding: utf-8
class ToolItemsController < InheritedResources::Base
  before_filter :tool_acount_login

	def create
		create! { user_tool_items_path(current_user)}
	end

	def update
		update! { user_tool_items_path(current_user)}
	end

	def destroy
		destroy! { user_tool_items_path(current_user)}
	end


  private
  def tool_acount_login
    unless !!session[:tool_acount]
    	flash[:error] = "您还未登录保险箱，请先登录"
    	redirect_to "/tool_acounts/login"
    end
  end
end
