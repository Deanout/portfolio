Rails.application.routes.draw do
  resources :posts
  get 'blog', to: 'posts#index', as: 'blog'
  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
