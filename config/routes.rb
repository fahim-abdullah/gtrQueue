Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'orders#status'

  resources :orders do
  	get 'documents', 'locate', 'deliver'
  end

  get 'status_table', to: 'orders#status_table'
  get 'requests_table', to: 'orders#requests_table'
  get 'progress_table', to: 'orders#progress_table'
  get 'delivery_table', to: 'orders#delivery_table'

end