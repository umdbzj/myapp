Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/schedule'

  get 'static_pages/labs'

  get 'static_pages/homework'

  get 'static_pages/deadlines'

  get 'static_pages/help'

    root 'application#hello'
end
