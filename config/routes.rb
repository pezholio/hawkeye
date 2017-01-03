Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :beers, only: [:show, :index] do
    collection do
      post 'search'
    end
  end
end
