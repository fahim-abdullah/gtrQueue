Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'orders#progress_table'

  resources :orders do
  	get 'documents', 'locate', 'deliver'
  end

  resources :agents
  resources :staffs

  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'status_table', to: 'orders#status_table'
  get 'requests_table', to: 'orders#requests_table'
  get 'progress_table', to: 'orders#progress_table'
  get 'delivery_table', to: 'orders#delivery_table'

  mount ActionCable.server, at: '/cable'

end