Rails.application.routes.draw do
  namespace :admin do
      resources :courses

      root to: "courses#index"
    end
  resources :courses
  resources :lets_talk_submissions
  root to: "welcome#index"
end
