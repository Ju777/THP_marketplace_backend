Rails.application.routes.draw do
  resources :messages
  resources :articles
  # resources :users

  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  get '/visitors', to: 'members#index'
  get '/visitors/:id', to: 'members#show_visitors'
  put '/update_user', to:'members#update'
  
  
end