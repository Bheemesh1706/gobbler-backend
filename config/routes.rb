Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do 
        resources :users
        resources :orders
        resources :gas_agencys
        resources :deliverys
      end
  end

end
