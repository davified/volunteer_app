Rails.application.routes.draw do

  resources :comments
  devise_for :users
  resources :users, only: [:show, :index]
  root "tasks#index"

  resources :tasks do
    member do
      put "like", to: "tasks#upvote"
      put "dislike", to: "tasks#downvote"
    end
    resources :comments
  end

  get 'volunteer', to: 'usertask#volunteer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
