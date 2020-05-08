Rails.application.routes.draw do
  root :to => "pages#show_login"

  post "/login", to: "pages#create_login"

  get "/logout", to: "pages#logout"

  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
