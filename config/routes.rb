Rails.application.routes.draw do
  resources :apartments
  resources :tablatures
  resources :groceries
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
