Rails.application.routes.draw do
  # get 'dvds/index'
  # get 'dvds/show'
  # get 'welcome/index', to: "welcome#index"

  root 'welcome#index'
  resources :dvds
  # get    '/dvds/:id/new' to: "dvd#new"
  # get '/dvds/:id(.:format)' to:  "dvd#show"

end
