Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'portfolio', to: "pages#portfolio"
  get 'portfolio/description', to: "pages#showportfolio"
  root to: "pages#index"

  resources :portfolio_items, only: [:index, :show]
end
