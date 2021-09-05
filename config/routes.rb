Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/career', to: 'static_pages#career'
  get '/projects', to: 'static_pages#projects'
end
