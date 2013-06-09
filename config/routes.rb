RailsComposerApp2::Application.routes.draw do
  resources :uploads

  devise_for :users
  root :to => "home#index_static"
  authenticated :user do
    root :to => 'users#show'
  end
  #add to user login redirect
  match 'dashboard' => 'users#show', :as => 'user_root'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  

  resources :users do
    resources :notes
    resources :huiyi_items
    resources :huiyi_cates
    resources :zuopin_items
    resources :zuopin_cates
    resources :jinian_items
    resources :jinian_cates
    resources :tool_items
    resources :tool_acounts
    resources :resource_items
    resources :resource_cates
    resources :jiapus
    resources :user_infos
  end
  resources :user_infos
  resources :user_relationships
  
  resources :pages
  
  get "jiapus/new_member"
  match 'create_member' => 'jiapus#create_member', :via => :post
  
  get "notes/destroy_all"
  get "home/jiapu"
  get "home/note"
  get "home/jinian"
  get "home/huiyi"
  get "home/zuopin"
  get "home/toolbox"
  get "home/index"
  get "home/index_static"
  get "notes/events"
  get "tool_acounts/edit_password"
  get "tool_acounts/login"
  match "search_items" => "users#search_items"
  match "tool_acounts/login" => "tool_acounts#login"
end