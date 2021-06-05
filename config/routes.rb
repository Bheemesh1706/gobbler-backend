Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do 
        resources :users
        resources :orders
        resources :agencies
        resources :deliveries
        get 'sendotp', to: 'otps#SendOtp'
        post 'login', to: 'sessions#create'
      end
  end

end
