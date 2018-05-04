Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "about",      to: "pages#about"
  get "contact-us", to: "pages#contact"

  root to: "pages#index"

  resources :portfolio_items, only: [:index, :show]
  resources :messages, only: [:create]
  resources :enquiries, only: [:create]
end
