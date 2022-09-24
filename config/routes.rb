Rails.application.routes.draw do
  root 'questions#show'
  resources :questions
end
