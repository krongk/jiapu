class ToolItemsController < InheritedResources::Base
  before_filter :tool_acount_login

  private
  def tool_acount_login
    session[:tool_acount]
  end
end
