Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :new, :create]
  root 'users#index'
  #post '/users/new', to: 'users#create'
end

