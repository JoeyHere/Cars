Rails.application.routes.draw do
  resources :cars
  resources :owners
  resources :brands
  resources :mechanics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
