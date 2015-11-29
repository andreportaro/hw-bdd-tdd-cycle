Rottenpotatoes::Application.routes.draw do
  resources :movies
    get '/', to: 'movies#index'
    get '/edit/:id/', to: 'movies#edit'
    get '/movies/:id/director' => "movies#director", :as => :director_movies
  root :to => redirect('/movies')
end
