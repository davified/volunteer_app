Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"

  resources :tasks do
    member do
      put "like", to: "tasks#upvote"
      put "dislike", to: "tasks#downvote"
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
