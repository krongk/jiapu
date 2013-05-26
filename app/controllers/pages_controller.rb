class PagesController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:show]
	def show
    #params can be id or path_name
    if params[:id] =~ /^\d+$/
      @page = Page.where(:id => params[:id]).limit(1).first
    else
      @page = Page.where(:path_name => params[:id]).limit(1).first
    end
    @page = Page.find(1) if @page.nil?

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end
