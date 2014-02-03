Photophore::Application.routes.draw do
  get "static_pages/home"

  get '/a/:public_hash', :to => 'accounts#show', :as => :account

  # match '/a/:public_hash', to: 'accounts#show', via: 'get', as: :account
end
