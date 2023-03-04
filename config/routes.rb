Rails.application.routes.draw do
  get "/login" => "auth0#login"
  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout"

  get "/admin" => "admin/base#welcome"

  namespace :admin do
    resources :teams
    resources :sponsors
    resources :news_articles
  end

  resources :news_articles, only: [:index]
  resources :teams, only: [:index]
end
