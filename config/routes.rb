Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users
  get 'user/:id', to: 'users#show', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :users do
    get 'users', to: 'device/session#new'
  end
end

