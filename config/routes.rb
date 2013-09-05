PortfolioSite::Application.routes.draw do

  devise_for :users

  root to: 'projects#index'

  resources :projects, only: [:index]

  resources :posts
end
