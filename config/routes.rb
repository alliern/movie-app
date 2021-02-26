Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_movie_path" => "movies#first_movie_action"

    get "/all_movies_path" => "movies#all_movies_action"
  end
end
