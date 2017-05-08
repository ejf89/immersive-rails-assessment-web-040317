Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes, only: [:index, :show]
  resources :appearances
  resources :users

  post '/apperances', to: 'appearance#create'
  post '/users/new', to: 'users#create'

  root 'welcome#index'
end
