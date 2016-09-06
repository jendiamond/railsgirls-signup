Rails.application.routes.draw do
  devise_for :members, controllers: {registrations: "registrations"}
  resources :questions
  get 'static_pages/faq'
  get 'static_pages/about'
  root 'static_pages#home'
  resources :users do
    resources :tutorials, only: [:show, :update, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
