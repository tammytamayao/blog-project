Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "articles#index" # mapped articles controller with index action as root path

# used this for apps that uses CRUD operations, built-in entity to simplify routes.rb
  resources :articles

 # get "/articles", to: "articles#index" # get request from /articles to process index action from articles controller
 # get "/articles/:id", to: "articles#show" # get request from /articles to process show action from articles controller
end