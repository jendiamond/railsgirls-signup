Rails.application.routes.draw do
  resources :questions
  get 'static_pages/faq'
  get 'static_pages/about'
  root 'static_pages#home'
  resources :users do
    resources :tutorials, only: [:show, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
