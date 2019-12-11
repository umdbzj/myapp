Rails.application.routes.draw do

  get '/add_reading', to: 'readings#new'
  
  get '/readings', to: 'readings#index'

  get '/schedule', to: 'static_pages#schedule'

  get '/labs', to: 'static_pages#labs'
  
  get '/homework', to: 'static_pages#homework'

  get '/deadlines', to: 'static_pages#deadlines'

  get '/help', to: 'static_pages#help'
  
  get '/resources', to: 'static_pages#resources'
  
  get '/instructor', to: 'static_pages#instructor'
    
  get '/contact', to: 'static_pages#contact'
  
  get '/about', to: 'static_pages#about'

  root 'static_pages#home'
  
  resources :readings
end
