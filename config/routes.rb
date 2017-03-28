Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :posts do
    resources :comments
  end
  root 'pages#home'
end
