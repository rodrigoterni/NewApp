NewApp::Application.routes.draw do
  get "home/index"

  resources :posts
  resources :funds

  root :to => 'Home#index'

end
