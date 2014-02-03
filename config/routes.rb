Photophore::Application.routes.draw do
  # get "static_pages/home"

  get '/p/:public_hash', :to => 'accounts#show', :as => :account
  get '/', :to => 'accounts#new', :as => :new_account
end
