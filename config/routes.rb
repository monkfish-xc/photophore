# == Route Map (Updated 2014-02-05 00:12)
#
#    Prefix Verb URI Pattern               Controller#Action
# new_photo GET  /                         photos#new
#    photos POST /photos(.:format)         photos#create
#   account GET  /p/:public_hash(.:format) accounts#show
#     photo GET  /i/:public_hash(.:format) photos#show
#

Photophore::Application.routes.draw do
  # get "static_pages/home"

  root :to => 'photos#new', :as => :new_photo
  resources :photos, only: :create

  scope :i do
    get '/:public_hash', :to => 'photos#show', :as => :photo
  end

  scope :p do
    get '/:public_hash', :to => 'accounts#show', :as => :account
  end

end
