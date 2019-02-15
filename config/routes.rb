Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/fighters/:fighter_id/favorites', to: 'favorites#create', as: 'create_a_favorite'

   post '/fighters', to: 'fighters#create'
   post '/fighters/:fighter_id', to: 'fighters#edit'

   # get '/comments/:comment_id', to: 'comments#edit'
    # patch '/comments/:comment_id', to: 'comments#update'

    get '/users/:user_id/favorites', to: 'users#favorite', as: 'user_favs'
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

  get '/ok', to: 'fighters#ok', as: 'ok_fighter'

end
