RailsComposerApp2::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  get "home/jiapu"
  get "home/note"
  get "home/jinian"
  get "home/huiyi"
  get "home/zuopin"
  get "home/toolbox"
end