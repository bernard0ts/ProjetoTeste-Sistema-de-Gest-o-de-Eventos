Rails.application.routes.draw do
  devise_for :users, path: ''
  scope module: 'users'  do
    resources :users, except: :show
  end

  get 'welcome/index'
  root 'welcome#index'
  resources :tags
  scope module: :users  do
    resources :users, except: :show
  end  
  
  resources :events
  resources :events do
    resource :participant, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
