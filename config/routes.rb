Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'welcome#index'

  mount ApiRoot => ApiRoot::PREFIX

  resources :courses, only: [:show]

  namespace :admin do 
    resources :courses
  end
end
