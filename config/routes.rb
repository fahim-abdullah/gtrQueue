Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'orders#status'

  resources :orders do
  	get 'documents', 'locate', 'deliver'
  end

  get 'status', to: 'orders#status'
  get 'requests', to: 'orders#requests'
  get 'progress', to: 'orders#progress'

end