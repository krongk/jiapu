class HomeController < ApplicationController
 # caches_page :index
  layout 'home'
  
  def index
    return redirect_to user_path(current_user) if current_user
  end

  def index_static

  end

  def jiapu

  end

  def note

  end

  def jinian

  end

  def zuopin

  end

  def huiyi

  end

  def toolbox

  end

end
