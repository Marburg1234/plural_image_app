Rails.application.routes.draw do

  resources :posts, only: [:new, :create, :index, :destroy, :show]


end
