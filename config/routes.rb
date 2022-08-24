Rails.application.routes.draw do
  get 'inicio/index'
  root "inicio#index"

  get "edificios",        to: "edificios#index",    as: "edificios"
  get "edificios/new",    to: "edificios#new",    as: "new_edificio"
  post "edificios",       to: "edificios#create"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
