class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "99zcg", :password => "111" #, :except => :index
  #before_filter :authenticate_user!

  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

end
