Newblog::Application.routes.draw do
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#new', as: 'logout'  
  
  resources :users
  resources :sessions 
  root :to => 'posts#index'
  resources :posts

end
