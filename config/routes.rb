Rails.application.routes.draw do

  devise_for :users
  resources :products do
    collection do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
