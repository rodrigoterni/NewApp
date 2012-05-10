NewApp::Application.routes.draw do
  get "home/index"

  resources :posts

  root :to => 'Home#index'

end
