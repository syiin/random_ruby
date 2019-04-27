Rails.application.routes.draw do
  #maps requests to 'welcome/index' to the index action
  get 'welcome/index'
  #declare a standard REST resource
  resources :articles
  #direct requests to root to welcome#index
  root 'welcome#index'
end
