SampleApp::Application.routes.draw do
  root to: 'static_pages#home'

  resources :users
  match '/signup',  to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy', via: delete

  match '/home',    to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

end
