class JinianCatesController < InheritedResources::Base

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
