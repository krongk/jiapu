RailsComposerApp2::Application.routes.draw do
 
  resources :uploads

  devise_for :users
  root :to => "home#index"
  authenticated :user do
    root :to => 'home#zuopin'
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
  end
  
  resources :pages
  
  get "home/jiapu"
  get "home/note"
  get "home/jinian"
  get "home/huiyi"
  get "home/zuopin"
  get "home/toolbox"
  get "home/index"
  get "notes/events"

  
end