Rails.application.routes.draw do

  root 'bank_holidays#index'

  resources :bank_holidays, only: :index

end
