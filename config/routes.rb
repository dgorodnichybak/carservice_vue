Rails.application.routes.draw do
  root to: 'ui#index'

  namespace :user, defaults: { format: :json } do
    resource :sessions, only: [:create, :destroy]
    resource :registrations, only: :create
  end

  get '/*path', to: 'ui#index', format: false
end
