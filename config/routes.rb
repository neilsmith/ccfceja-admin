Rails.application.routes.draw do
  namespace :admin do
    resources :teams
    resources :sponsors
    resources :news_articles
  end

  resources :news_articles, only: [:index]
  resources :teams, only: [:index]
end
