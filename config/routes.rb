Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/fighters/:fighter_id/favorites', to: 'favorites#create', as: 'create_a_favorite'

  resources :hompages
  resources :users
  resources :fighters, except: [:create]

  # resources :fighters do
  #    resources :favorites, only: [:create]
  #  end

  # post '/fighters/favorites',  to: 'fighters#show'
  resources :comments
  resources :favorites
  resources :camps

end
