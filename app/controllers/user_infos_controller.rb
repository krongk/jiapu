class UserInfosController < InheritedResources::Base
	before_filter :authenticate_user!
	def create
		create! { user_user_info_path(current_user)}
	end

	def update
		update! { user_user_info_path(current_user)}
	end

	def destroy
		destroy! { user_user_info_path(current_user)}
	end
end
