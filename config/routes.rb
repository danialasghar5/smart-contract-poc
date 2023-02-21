Rails.application.routes.draw do
  resources :lets_talk_submissions
  root to: "welcome#index"
end
