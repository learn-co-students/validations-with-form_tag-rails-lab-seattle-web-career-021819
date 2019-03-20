Rails.application.routes.draw do
  # get 'author/show'
  #
  # get 'author/new'
  #
  # get 'author/edit'

  resources :authors
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
