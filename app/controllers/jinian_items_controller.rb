class JinianItemsController < InheritedResources::Base
	def index
		@uploads = Upload.where(:user_id => current_user.id, :resource_type => 'jinian', :resource_id => params[:id])
		super
	end

	def create
		create! { user_jinian_item_path(current_user, @jinian_item)}
	end

	def update
		update! { user_jinian_item_path(current_user, @jinian_item)}
	end

	def destroy
		destroy! { user_jinian_item_path(current_user, @jinian_item)}
	end
end
