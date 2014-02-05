# == Route Map (Updated 2014-02-04 20:33)
#
#    Prefix Verb URI Pattern                   Controller#Action
# new_photo GET  /                             photos#new
#    photos POST /photos(.:format)             photos#create
#   account GET  /p/:public_hash(.:format)     accounts#show
#     photo GET  /i/:public_hash(.:format)     photos#show
#           GET  /api/p/:public_hash(.:format) accounts#show
#           GET  /api/i/:public_hash(.:format) photos#show
#

Photophore::Application.routes.draw do
  # get "static_pages/home"

  root :to => 'photos#new', :as => :new_photo
  resources :photos, only: :create

  scope :p do
    get '/:public_hash', :to => 'accounts#show', :as => :account
  end

  scope :i do
    get '/:public_hash', :to => 'photos#show', :as => :photo
  end

  scope :api do
    get '/p/:public_hash(.:format)', :to => 'accounts#show'
    get '/i/:public_hash(.:format)', :to => 'photos#show'
    resources :accounts
    resources :photos
  end
end
