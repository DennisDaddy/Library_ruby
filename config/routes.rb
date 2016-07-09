Rails.application.routes.draw do
  get 'users/new'

  root 'pages#home'

  get  'about' => 'pages#about'

  get 'admin' => 'pages#admin'

  get 'contact' => 'pages#contact'
end
