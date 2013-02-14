PhilngoMe::Application.routes.draw do
  root to: 'static_pages#home'

  match '/calendar', to: 'static_pages#calendar'
end
