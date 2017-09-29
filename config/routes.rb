Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'people/index'

  get 'people/show'

  root 'home#index'

  get 'dashboard/', to: 'dashboard#index'

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
