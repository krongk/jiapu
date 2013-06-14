class ApplicationController < ActionController::Base
  #http_basic_authenticate_with :name => "99zcg", :password => "111" #, :except => :index
  #before_filter :authenticate_user!
  before_filter :set_current_user
  protect_from_forgery


  

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private

  #http://stackoverflow.com/questions/3742785/rails-3-devise-current-user-is-not-accessible-in-a-model#3742981
  def set_current_user
    User.current_user = current_user
  end

end
