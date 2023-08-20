Rails.application.routes.draw do
  resources :heroes, only: [:index, :show] do
    resources :hero_powers, only: [:create]
  end

  resources :powers, only: [:index, :show, :update]
end

