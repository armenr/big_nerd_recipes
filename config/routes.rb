Rails.application.routes.draw do
  resources :recipes do
    patch :like, on: :member
    resources :ingredients, except: [:index, :show]
  end
end
