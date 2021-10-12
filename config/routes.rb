Rails.application.routes.draw do
  devise_for :users
  root to: "maps#index"
  references :posts
end
