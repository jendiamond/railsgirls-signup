Rails.application.routes.draw do
  resources :coaches
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :members, controllers: {registrations: "registrations"}
  resources :questions
  get 'static_pages/faq'
  get 'static_pages/about'
  get 'static_pages/rgla'
  get 'users/accepted'
  get 'users/pending'
  get 'users/tutorials'
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
