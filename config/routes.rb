Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/schedule'

  get 'static_pages/labs'

  get 'static_pages/homework'

  get 'static_pages/deadlines'

  get 'static_pages/help'
  
  get 'static_pages/resources'

  root 'static_pages#home'
end
