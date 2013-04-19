RailsComposerApp2::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  resources :pages

  resources :users

  get "home/jiapu"
  get "home/note"
  get "home/jinian"
  get "home/huiyi"
  get "home/zuopin"
  get "home/toolbox"
  get "home/index"

  
end