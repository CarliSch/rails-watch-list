Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end
  # get lists/:list_id/bookmarks/new
  # @list = List.find(params list_id)
  resources :bookmarks, only: [:destroy]
  # get /bookmarks/:id
  # @bookmark = Bookmark.find(params id)
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
