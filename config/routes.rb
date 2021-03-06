PhilngoMe::Application.routes.draw do
  root to: 'static_pages#welcome'

  match '/about', to: 'static_pages#about'
  match '/projects', to: 'static_pages#projects'
  match '/artwork', to: 'static_pages#artwork'
  match '/photography', to: 'static_pages#photography'
  match '/collection', to: 'static_pages#collection'
  match '/bugs', to: 'static_pages#bugs'

  resources :blog, only: [:index,:show]
end
