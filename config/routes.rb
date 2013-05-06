PhilngoMe::Application.routes.draw do
  root to: 'static_pages#about'

  match '/projects', to: 'static_pages#projects'
  match '/artwork', to: 'static_pages#artwork'
  match '/photography', to: 'static_pages#photography'
  match '/calendar', to: 'static_pages#calendar'
  match '/collection', to: 'static_pages#collection'
  match '/bugs', to: 'static_pages#bugs'
end
