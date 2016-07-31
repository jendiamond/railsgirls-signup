Rails.application.routes.draw do
  get 'static_pages/faq'
  get 'static_pages/about'
  root 'static_pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
