Twotypes::Application.routes.draw do
  resources :posts

  # match '/:id' => "home#show"
  # get "home/index"
  
  root :to => 'posts#index'
end
