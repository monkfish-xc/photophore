Photophore::Application.routes.draw do
  get "static_pages/home"

  resources :accounts
  match '/:id', to: 'accounts#show', via: 'get'
end
