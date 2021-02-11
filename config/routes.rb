Rails.application.routes.draw do
  root 'static_pages#show'
  resources :idtokens, only: :new
  resources :static_pages, only: :show
end
