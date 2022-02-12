Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: "admins/sessions", registrations: "admins/registrations" }
  devise_for :users
  root 'welcome#index'

  mount ApiRoot => ApiRoot::PREFIX

  resources :courses, only: [:index, :show] do
    member do
        post "buy" => "courses#buy"
    end
  end

  namespace :admin do 
    resources :courses
  end
end
