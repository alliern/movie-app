

Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_movie_path" => "movies#first_movie_action"

    get "/all_movies_path" => "movies#all_movies_action"
    get "/1994_movies_path" => "movies#ninefour_movies"
    get "single_actor_path" => "actors#single_actor"
    get "single_actor_path/:id" => "actors#single_actor"
    post "single_actor_path" => "actors#single_actor"
  end
end
