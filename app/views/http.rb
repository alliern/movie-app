require "http"

output = HTTP.get("http://localhost:3000/api/all_movies_path")
output2 = HTTP.get("http://localhost:3000/api/1994_movies_path")

puts output2.parse