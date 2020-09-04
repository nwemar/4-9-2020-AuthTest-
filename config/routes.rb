Rails.application.routes.draw do
  
 
  
    devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    confirmations: 'admins/confirmations',
    passwords: 'admins/passwords'
  }

      devise_for :customer, controllers: {
     sessions: 'customer/sessions',
     registrations: 'customer/registrations',
     confirmations: 'customer/confirmations',
    passwords: 'customer/passwords'
  }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'home#index'
   
     resources :customerhomes
     # resources :adminhomes
     
      get 'adminhomes/index'
      get "adminhomes/new"
     

      get "supervisor/index"

      get "student/index"

      
end
