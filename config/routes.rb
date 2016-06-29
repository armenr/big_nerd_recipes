Rails.application.routes.draw do
  namespace :admin do
  get 'recipes/index'
  end

  resources :recipes do
    patch :like, on: :member
    resources :ingredients, except: [:index, :show]
  end

  namespace :admin, constraints: AdminWhitelistConstraint.new do
  	resources :recipes, only: [:index, :destroy]
  end

  ## OR YOU CAN DO THIS

  #constraints AdminWhitelistConstraint.new do
  #	namespace :admin do
  #		resources :recipes, only: [:index, :destroy]
  #	end
  #end


  get '/:shortcode', to: 'permalinks#show', as: :permalink, constraints: {
  	shortcode: /\h{6}/}
end
