Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'about' => 'pages#about'

  resources :posts #creates alls the routes, gets, posts, patch, put and delete
end
