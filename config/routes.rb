Rails.application.routes.draw do
  devise_for :users
  resources :picks, :index, :new, :create
  #get 'group_picks/index'
  #post 'picks/create'
  #get 'picks/index'
  #get 'picks/update'
  #get 'picks/new'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'picks#index'
end
