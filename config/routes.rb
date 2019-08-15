Rails.application.routes.draw do
  get 'welcome/index'

  resources :feedbacks

  root 'welcome#index'
end
