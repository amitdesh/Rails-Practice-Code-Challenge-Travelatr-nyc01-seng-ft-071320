Rails.application.routes.draw do
  resources :bloggers, only: [:show, :new, :create]
  resources :posts, except: [:index, :destroy]
  resources :destinations, only: [:show]
end
