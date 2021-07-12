Rails.application.routes.draw do
  root 'votes#index'
  get "votes", to: "votes#index"
  get "/votes/new"
  post "/votes", to: "votes#create"

end
