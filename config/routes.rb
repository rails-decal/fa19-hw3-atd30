Rails.application.routes.draw do
  get 'cities/index'
  get 'cities/view'
  get 'cities/new'
  post 'cities/create'
  get 'cities/update'
  post 'cities/update'
  root "main#index"
end
