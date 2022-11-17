Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # get 'lists', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'

  Rails.application.routes.draw do
    root "lists#index"
    resources :lists do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: :destroy
  end
end
