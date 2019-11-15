Rails.application.routes.draw do
  devise_for :users
  get 'picks/create'
  get 'picks/index'
  get 'picks/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'picks#index'
end
