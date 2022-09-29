Rails.application.routes.draw do
  delete '/pets/:id', to: 'pets#destroy' #
  patch 'pets/:id', to: 'pets#update'   # Estos tres nombres se usan por convención
  post '/pets', to: 'pets#create'       #
  get '/pets/new', to: 'pets#new', as: :new_pet
  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show', as: :pet #muestra una mascota en concreto
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet


  delete '/owners/:id', to: 'owners#destroy' #
  patch 'owners/:id', to: 'owners#update'   # Estos tres nombres se usan por convención
  post '/owners', to: 'owners#create'       #
  get '/owners/new', to: 'owners#new', as: :new_owner
  get '/owners', to: 'owners#index'
  get '/owners/:id', to: 'owners#show', as: :owner #muestra una mascota en concreto
  get '/owners/:id/edit', to: 'owners#edit', as: :edit_owner
end
