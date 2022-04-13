Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  devise_for :users
  get 'user/:id', to: 'users#show', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :users do
    get 'users', to: 'device/session#new'
  end
end

