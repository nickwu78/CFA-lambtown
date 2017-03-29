Rails.application.routes.draw do
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :posts do
    resources :comments
  end
  root 'pages#home'
end
