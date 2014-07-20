Rails.application.routes.draw do

  root 'searchs#new'

  resources :searchs, only: [:new, :create]

  get 'searchs' => 'searchs#create'
end
