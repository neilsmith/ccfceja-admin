Rails.application.routes.draw do
  namespace :admin do
    resources :teams
    resources :sponsors
    resources :news_articles
  end
end
