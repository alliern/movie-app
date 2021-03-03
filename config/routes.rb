

Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies" => "movies#index"
    get "movies" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies" => "movies#update"
    delete "/movies" => "movies#destroy"

    get "/actors" => "actors#index"
    get "actors" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors" => "actors#update"
    delete "/actors" => "actors#destroy"
  end
end
