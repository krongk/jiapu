#encoding: utf-8
class UsersController < ApplicationController
  before_filter :authenticate_user!

  def search_items
    @search_items = []
    if params[:cate] == 'note'
      notes = current_user.notes.where(["title like ? OR body like ?", "%#{params[:q]}%", "%#{params[:q]}%"])
      notes.each do |note|
        @search_items << {:created_at => note.created_at, :title => note.title, :url => user_note_path(current_user,note)}
      end
    end
  end

  def index
    authorize! :index, @user, :message => '没有管理员权限.'
    @users = User.order("updated_at DESC").paginate(:page => params[:page]|| 1, :per_page => 20)
  end

  def show
    @user = current_user || User.find(params[:id])
  end
  
  def update
    authorize! :update, @user, :message => '没有管理员权限.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to user_path(@user), :notice => "更新成功."
    else
      redirect_to user_path(@user), :alert => "更新失败."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => '没有管理员权限'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
end