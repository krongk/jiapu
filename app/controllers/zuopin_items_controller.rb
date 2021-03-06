class ZuopinItemsController < InheritedResources::Base
	before_filter :authenticate_user!
	def create
		create! { user_zuopin_cate_path(current_user, @zuopin_item.zuopin_cate)}
	end

	def update
		update! { user_zuopin_cate_path(current_user, @zuopin_item.zuopin_cate)}
	end

	def destroy
		destroy! { user_zuopin_cate_path(current_user, @zuopin_item.zuopin_cate)}
	end
end
