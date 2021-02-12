Rails.application.routes.draw do
  root 'static_pages#show'
  resource :idtokens, only: [:new, :create]
  resource :static_pages, only: :show
  resource :sendmessages, only: [:new, :create]
  resource :getprofiles, only: :show
end
