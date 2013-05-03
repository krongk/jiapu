class JinianItemsController < InheritedResources::Base
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
