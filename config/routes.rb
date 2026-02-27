Rails.application.routes.draw do
  resources :lists, only: [:index, :show] do
    resources :bookmarks, only: [:create, :destroy]
  end
  # bookmarks#destroy
end
