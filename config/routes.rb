Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users do
    collection do
      post "/login", to: "users#login"
      post "/register", to: "users#register"
    end
  end
end
