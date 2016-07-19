Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'pages#home'

  get  'about' => 'pages#about'

  get 'admin' => 'pages#admin'

  get 'contact' => 'pages#contact'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get 'edit' => 'users#edit'

  resources :users

  resources :account_activations, only: [:edit]
end
