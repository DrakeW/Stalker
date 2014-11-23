Rails.application.routes.draw do


  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :groups do
    resources :group_member
  end
  resources :visitors
  resources :comments
  #post 'groups/:group_id/group_member/create', to: 'group_member#create', :as => :group_member_create
end
