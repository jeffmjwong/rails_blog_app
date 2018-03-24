Rails.application.routes.draw do
  resources :lols
  resources :posts
  get '/pages', to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
