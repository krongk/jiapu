class JinianCatesController < InheritedResources::Base

	def show
		@uploads = Upload.where(:user_id => current_user.id, :resource_type => 'jinian', :resource_id => params[:id])
		super
	end

	def create
		create! { user_jinian_cate_path(current_user, @jinian_cate)}
	end

	def update
		update! { user_jinian_cate_path(current_user, @jinian_cate)}
	end

	def destroy
		destroy! { user_jinian_cate_path(current_user, @jinian_cate)}
	end

end
