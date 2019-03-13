Rails.application.routes.draw do

  namespace :api do 
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"

    get "/orders" => "orders#index"

    get "/orders/id" => "orders#show"

    get "/products" => "products#index"

    post "/products" => "products#create"

    get "/products/:id" => "products#show"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"
  end
end
