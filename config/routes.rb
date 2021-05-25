Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do 
        resources :users
        resources :orders
        resources :agencies
        resources :deliveries
        get 'sendmessage', to: 'otps#SendMessage'
      end
  end

end
