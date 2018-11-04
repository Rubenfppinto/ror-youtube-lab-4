Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do #creates alls the routes, gets, posts, patch, put and delete
    resources :comments #comments are nested inside posts
  end
end
