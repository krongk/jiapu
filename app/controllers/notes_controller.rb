#encoding: utf-8
class NotesController < InheritedResources::Base
  before_filter :authenticate_user!
  def index
    @notes = current_user.notes.order("updated_at DESC").paginate(:page => params[:page]|| 1, :per_page => 20)
    @resource_items = current_user.resource_items.where(:resource_cate_id => 2)
  end

  def events
    @notes = current_user.notes
    respond_to do |format|
      format.json 
    end
  end

  def destroy_all
    return unless  current_user
    current_user.notes.order("created_at DESC").each do |item|
      item.destroy
    end
    redirect_to user_notes_path, notice: '记事本已经清空！'
  end
  
  def create
    @note = Note.new(params[:note])
    @note.user_id = current_user.id
    
    respond_to do |format|
      if @note.save
        format.html { redirect_to user_notes_path, notice: '网站添加成功.' }
        format.json { render json: @note, status: :created, location: @note }
      else
        format.html { render action: "new" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end
end
