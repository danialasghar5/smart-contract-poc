Rails.application.routes.draw do
  #devise_for :students
  devise_for :teachers
  namespace :admin do
      resources :courses
      resources :enrollments
      resources :completions

      root to: "courses#index"
    end
  resources :courses
  resources :lets_talk_submissions
  root to: "welcome#index"

  get '/context-story', to: 'welcome#context_story'
  get '/download_pdf', to: 'pdf#download'
end
