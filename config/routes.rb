Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      #devise_for :users
      #devise_for :users, :controller => {:sessions => 'authenticate'}
      # devise_scope :user do
      #   get 'users/current', to: 'api/sessions#show'
      # end
      #post :auth, to: 'authenticate#create'
      post 'user_token' => 'user_token#create'

      
      resources :users do
        get '/invoices', to: 'invoices#index'
        resources :invoices
        resources :customers
      end
      
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # scope :api, defaults: {format: :json} do

  #     devise_for :users, :controller => {:sessions => 'sessions'}
  #     devise_scope :user do
  #       get 'users/current', to: 'api/sessions#show'
  #     end

  #     resources :users do
  #       get '/invoices', to: 'invoices#index'
        
  #       #resources :invoices
  #       resources :customers
  #     end
  #     # resources :sessions, only: [:create, :destroy]

  # end

end
