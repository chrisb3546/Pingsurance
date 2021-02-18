Rails.application.routes.draw do

  root 'leads#index'
  
  resources :leads, only: [:index, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
