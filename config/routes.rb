Rails.application.routes.draw do
  resources :coaches
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :members, controllers: {registrations: "registrations"}
  devise_for :users

  authenticated :user do
    root 'secret#index', as: :authenticated_root
  end

  resources :questions
  get 'static_pages/faq'
  get 'static_pages/about'
  get 'static_pages/rgla'
  get 'users/accepted'
  get 'users/pending'
  root 'static_pages#home'
  resources :users do
    resources :tutorials, only: [:show, :update, :index]
  end

  namespace :admin do 
    resources :members, only: :show do
      post :generate_new_password_email
    end 
  end
end
