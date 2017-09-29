Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  root 'home#index'

  get 'admin', to: 'dashboard#index'

  resources :news, only: [:index, :show]
  resources :people, only: [:index, :show]
  resources :projects, only: [:index, :show]

  namespace :admin do
    resources :news
    resources :people
    resources :projects
    resources :slides
  end
end
