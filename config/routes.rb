Rails.application.routes.draw do

  resources :bookings

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :products do
    collection do
      get 'search'
    end
    # member do
    #   get 'bookings'
    # end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end

