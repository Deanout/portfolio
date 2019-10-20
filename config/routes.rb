Rails.application.routes.draw do
	post 'search', to: 'posts#search'
  resources :posts
  get 'blog', to: 'posts#index', as: 'blog'
  get 'posts', to: redirect('/blog')
  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
