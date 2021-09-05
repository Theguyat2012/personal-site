Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/employment', to: 'static_pages#employment'
  get '/projects', to: 'static_pages#projects'
end
