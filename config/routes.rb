Twotypes::Application.routes.draw do
  match '/:id' => "home#show"
  get "home/index"
  
  resources :posts
  root :to => 'home#index'
end
