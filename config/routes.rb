PhilngoMe::Application.routes.draw do
  root to: 'static_pages#about'

  match '/projects', to: 'static_pages#projects'
  match '/artwork', to: 'static_pages#artwork'
  match '/calendar', to: 'static_pages#calendar'
end
