Rails.application.routes.draw do
  devise_for :users
  # root to: 'home#home'
  resources :file_managements
  root to: 'file_managements#index'
  get 'file_download', to: 'file_managements#download'
  get 'home', to: 'file_managements#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
