Rails.application.routes.draw do
  resources :chanels
  resources :discussions do
    resources :replies
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  root to: 'discussions#index'
  devise_for :users, controllers: {registrations: 'registrations'}

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end
