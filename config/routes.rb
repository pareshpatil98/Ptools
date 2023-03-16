Rails.application.routes.draw do
  root 'tools#index'
  resources :tools
  end
