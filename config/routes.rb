Rails.application.routes.draw do
  get 'md5s/index'
  post 'md5s/new'
  get 'md5s/show'
  get 'md5s/btc'

  root "md5s#index"
  # match ':controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
