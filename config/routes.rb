Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients, except: [:index, :show]
  end
end
