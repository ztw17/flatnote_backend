Rails.application.routes.draw do
  resources :notes
  resources :note_tags
  resources :tags 
  resources :users
end
