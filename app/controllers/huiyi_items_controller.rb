class HuiyiItemsController < InheritedResources::Base

	def create
		create! { user_huiyi_items_path(current_user)}
	end

	def update
		update! { user_huiyi_items_path(current_user)}
	end

	def destroy
		destroy! { user_huiyi_items_path(current_user)}
	end

end
