Rails.application.routes.draw do
  root 'sessions#welcome'

  resources :users, only: [:new, :create]
  get 'login/new', to: 'sessions#new'
  post 'login/new', to: 'sessions#create'
  get 'sessions/:id', to: 'sessions#loggedin'

  delete 'sessions/:id', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
