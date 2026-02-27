Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [:index, :show] do
    resources :bookmarks, only: [:create, :destroy]
  end
  # bookmarks#destroy
end
