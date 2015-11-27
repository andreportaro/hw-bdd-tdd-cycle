Rottenpotatoes::Application.routes.draw do
  resources :movies
    get '/edit/:id/', to: 'movies#edit'
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

end
