Rails.application.routes.draw do
  get 'group_picks/index'
  devise_for :users
  get 'picks/create'
  get 'picks/index'
  get 'picks/update'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'picks#index'
end
