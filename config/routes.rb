Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: %i[index new create show destroy] do
    resources :doses, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: :doses_delete
end
