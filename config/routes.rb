# == Route Map (Updated 2014-02-03 17:19)
#
#      Prefix Verb URI Pattern               Controller#Action
#     account GET  /p/:public_hash(.:format) accounts#show
# new_account GET  /                         accounts#new
#    accounts POST /accounts(.:format)       accounts#create
#

Photophore::Application.routes.draw do
  # get "static_pages/home"

  get '/p/:public_hash', :to => 'accounts#show', :as => :account
  get '/', :to => 'accounts#new', :as => :new_account
  resources :accounts, only: :create
end
