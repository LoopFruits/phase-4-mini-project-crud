Rails.application.routes.draw do
  # get 'spices/index'
  # get 'spices/create'
  # get 'spices/update'
  # get 'spices/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spices, only: [:index, :create, :update , :destroy]
end
