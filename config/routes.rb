Rails.application.routes.draw do
  resources :words do
    collection do
      get 'alphabetical_order'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'words#index' 
end
