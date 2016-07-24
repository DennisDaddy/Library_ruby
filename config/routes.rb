Rails.application.routes.draw do
 

  

  root 'pages#home'

  get  'about' => 'pages#about'

  get 'admin' => 'pages#admin'

  get 'contact' => 'pages#contact'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get 'edit' => 'users#edit'

  get 'addbook' => 'books#new'
<<<<<<< HEAD
  
  resources :books
  resources :users
=======


   resources :users
   resources :books

>>>>>>> modelling-books

  resources :account_activation, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
