Rails.application.routes.draw do
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: :doses_delete
end

# get '/cocktails', to: 'cocktails#index'
# get '/cocktails/new', to: 'cocktails#new'
# get '/cocktails/:id', to: 'cocktails#show', as: :cocktails_show
# post '/cocktails', to: 'cocktails#create'
# get 'cocktails/:id/doses/new', to: 'doses#new', as: :doses_new
# post 'cocktails/:id/doses', to: 'doses#create', as: :doses_create
