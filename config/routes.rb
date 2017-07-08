Rails.application.routes.draw do
  resources :products
  resources :selling_versions

  root "products#new"
end
